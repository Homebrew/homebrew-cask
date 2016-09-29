cask 'karabiner-elements' do
  version '0.90.45'
  sha256 '2dd07d5f5fd75fa4b8b318a9416a9a1f500989b1146fa6a58a6996f3fa276eab'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '43d359f248fd0b5b4b301cd66c610f68d51d02c4fb14689c7d811860a7f30f2d'
  name 'Karabiner-Elements'
  homepage 'https://github.com/tekezo/Karabiner-Elements'
  license :public_domain

  auto_updates true

  pkg 'Karabiner-Elements.sparkle_guided.pkg'
  binary '/Applications/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements'

  uninstall early_script: '/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall.sh',
            script:       {
                            executable:   '/usr/bin/killall',
                            args:         ['Karabiner-Elements'],
                            must_succeed: false,
                            sudo:         false,
                          }

  zap       delete: [
                      '~/Library/Application Support/Karabiner-Elements',
                      '~/.karabiner.d',
                      '~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist',
                      '~/Library/Caches/org.pqrs.Karabiner-Elements-Updater'
                    ]
end
