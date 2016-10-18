cask 'adobe-photoshop-lightroom' do
  version '6.7'
  sha256 '882e403e9a50df4bf46daf10bd15b7aa66cc552d066ea675563f553b3ddffd9d'

  url "http://swupdl.adobe.com/updates/oobe/aam20/mac/AdobeLightroom-#{version.major}.0/#{version}/setup.dmg"
  name 'Adobe Photoshop Lightroom'
  homepage 'https://www.adobe.com/products/photoshop-lightroom.html'

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
                "~/Library/Preferences/com.adobe.Lightroom#{version.major}.plist",
              ]

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identify the conflicting processes.'
end
