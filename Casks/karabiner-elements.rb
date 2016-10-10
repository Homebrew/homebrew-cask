cask 'karabiner-elements' do
  version '0.90.47'
  sha256 '7790bc002a6768b97eb0fbc6837be88eff842166c7ade806bf9fc68f527f2b69'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '6081341adaa89eae09576a6f67add985ee97aaca88cc44c2221bd847d6cfc7f4'
  name 'Karabiner Elements'
  homepage 'https://pqrs.org/osx/karabiner/'

  auto_updates true

  pkg 'Karabiner-Elements.sparkle_guided.pkg'

  uninstall quit:    'org.pqrs.Karabiner-Elements',
            pkgutil: 'org.pqrs.Karabiner-Elements',
            script:  {
                       executable: '/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall.sh',
                       sudo:       true,
                     }

  zap       delete: [
                      '~/Library/Application Support/Karabiner-Elements',
                      '~/.karabiner.d',
                      '~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist',
                      '~/Library/Caches/org.pqrs.Karabiner-Elements-Updater',
                    ]
end
