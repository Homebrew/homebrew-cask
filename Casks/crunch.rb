cask 'crunch' do
  version '2.1.0'
  sha256 'c66b7a8288df02895b95d14b7728c1633305e5cf774b13f78e96516a6999e74f'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: 'c01f992b0f807f01e2c69a387b558530097570ddc7e646a6b4d22e7fefbd93cd'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
