cask 'adobe-photoshop-lightroom' do
  version '6.3'
  sha256 'f1282896be452a8515f92f5dd104695f54db114d5d06ba8d26175654cb26a524'

  url "http://swupdl.adobe.com/updates/oobe/aam20/mac/AdobeLightroom-#{version.to_i}.0/#{version}/setup.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'
  license :commercial

  zap       :delete => [
                        '~/Library/Application Support/Adobe/Lightroom',
                        "~/Library/Preferences/com.adobe.Lightroom#{version.to_i}.plist"
                       ]

  depends_on :cask => 'caskroom/versions/adobe-photoshop-lightroom600'

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

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identify the conflicting processes.'
end
