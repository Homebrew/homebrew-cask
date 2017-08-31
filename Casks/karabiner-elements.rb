cask 'karabiner-elements' do
  version '0.91.13'
  sha256 'c386839050e8c5c8a57e396940b1943cc0c8820fd9b0d864839e349c02c7b80c'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: 'b2d15e6912314c31a76ccf26b27a84e43fd8bee2cf815aa5d1f2e7418cabe9fc'
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
                      '~/.config/karabiner',
                      '~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist',
                      '~/Library/Caches/org.pqrs.Karabiner-Elements-Updater',
                    ]
end
