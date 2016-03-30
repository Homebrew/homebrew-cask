cask 'adobe-photoshop-lightroom' do
  version '6.4'
  sha256 '877a16dc12655a43d5c137ddd789a4c7095e7c29c7886cd5d0545af2f1973336'

  url "http://swupdl.adobe.com/updates/oobe/aam20/mac/AdobeLightroom-#{version.to_i}.0/#{version}/setup.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'
  license :commercial

  depends_on cask: 'caskroom/versions/adobe-photoshop-lightroom600'

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/AdobePatchInstaller.app/Contents/MacOS/AdobePatchInstaller", '--mode=silent'
  end

  uninstall_preflight do
    system 'brew', 'cask', 'uninstall', 'adobe-photoshop-lightroom600'
  end

  zap delete: [
                '~/Library/Application Support/Adobe/Lightroom',
                "~/Library/Preferences/com.adobe.Lightroom#{version.to_i}.plist",
              ]

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identify the conflicting processes.'
end
