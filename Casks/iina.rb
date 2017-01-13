cask 'iina' do
  version '0.0.2'
  sha256 '786a44c6cc118dfc97d2c91684b8e28f05dcaa3c64401f0505e1db4e67224d9d'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.zip"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '5ea6da7163d7181a2d86646edc7971f7fecb5841f9e5920de18487269f9da4b9'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  app 'IINA.app'
end
