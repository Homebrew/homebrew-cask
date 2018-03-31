cask 'crunch' do
  version '1.1.0'
  sha256 'b34e48d695ceed3a3e1be1c713e51374fbc1678f73aff25abb64c48243f43396'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'a853ab2501078bf7623dd015f0406092bea9c172c815aa9213df39a50486db13'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
