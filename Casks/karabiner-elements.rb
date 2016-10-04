cask 'karabiner-elements' do
  version '0.90.46'
  sha256 '29cd5d66c865696b8db23edf9a0c2950fc7d8c516e0978c161bc7aff343507f0'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '53fe96e0ee0bf212821e45dd355b80f2dee2818a62524bc9db7c80645047e26f'
  name 'Karabiner Elements'
  homepage 'https://pqrs.org/osx/karabiner/'
  license :public_domain

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
