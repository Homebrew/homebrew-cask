cask 'karabiner-elements' do
  version '0.91.9'
  sha256 '793685b3b844902e2f39299251f33f2169af5f2768b620c31b14a10539022cfa'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '935793cf62da78e3a6fcf90f71704e811132967f4226aa8aa21c78a65675cecb'
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
