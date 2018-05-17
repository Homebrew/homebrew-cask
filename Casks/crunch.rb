cask 'crunch' do
  version '2.0.2'
  sha256 '0bb3d52652ea6ab25df58a12898dece23010ffa6836dfd4beae4f0f1fe5b927b'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'cd6cbaac37c945254da05ea3bffea7a283040bfc132a5e567f8ed1cbde1e2e24'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
