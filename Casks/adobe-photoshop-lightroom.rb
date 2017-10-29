cask 'adobe-photoshop-lightroom' do
  version '6.13'
  sha256 '607c5f843243a99ef8423c37cfca9e39b997dce7e449416ca7084def45da1be0'

  url "http://swupdl.adobe.com/updates/oobe/aam20/mac/AdobeLightroom-#{version.major}.0/#{version}/setup.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'

  auto_updates true
  depends_on cask: 'caskroom/versions/adobe-photoshop-lightroom600'

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    processes = system_command '/bin/launchctl', args: ['list']

    if processes.stdout.lines.any? { |line| line =~ %r{^\d+\t\d\tcom.apple.SafariNotificationAgent$} }
      system_command '/usr/bin/killall', args: ['-kill', 'SafariNotificationAgent']
    end

    system_command "#{staged_path}/AdobePatchInstaller.app/Contents/MacOS/AdobePatchInstaller",
                   args: [
                           '--mode=silent',
                         ],
                   sudo: true
  end

  uninstall_preflight do
    system_command 'brew', args: ['cask', 'uninstall', 'adobe-photoshop-lightroom600']
  end

  zap trash: [
               '~/Library/Application Support/Adobe/Lightroom',
               "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
             ]

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identify the conflicting processes.'
end
