cask 'karabiner-elements' do
  version '0.90.48'
  sha256 '54164da2f7888b5438c44ccae1e30902de680c28a616f767f3ac7dd3b0d1759c'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '7458c089d97e1f61141e755d34a01fca420d877f8c00e99b98ca999176f7a4a0'
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
