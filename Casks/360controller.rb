cask '360controller' do
  version '0.16.11'
  sha256 '540c995554462af788f89e9bfa82e2fa3e6d1ff523dc2cbb7aa52415ecd3134f'

  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  appcast 'https://github.com/360Controller/360Controller/releases.atom'
  name '360Controller'
  homepage 'https://github.com/360Controller/360Controller/'

  pkg 'Install360Controller.pkg'

  uninstall pkgutil:   'com.mice.pkg.Xbox360controller',
            launchctl: 'com.mice.360Daemon',
            kext:      [
                         '/Library/StagedExtensions/Library/Extensions/360Controller.kext',
                         '/Library/Extensions/360Controller.kext',
                         '/System/Library/Extensions/360Controller.kext',
                       ],
            trash:     [
                         '/Library/PreferencePanes/Pref360Control.prefPane',
                       ]
end
