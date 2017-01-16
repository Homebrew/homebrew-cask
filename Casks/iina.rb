cask 'iina' do
  version '0.0.2'
  sha256 '786a44c6cc118dfc97d2c91684b8e28f05dcaa3c64401f0505e1db4e67224d9d'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.zip"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: 'c945776d76ba415244bd40a9cae05ea6e56772a7ce7a74bd05e3f050a6a7eba0'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  app 'IINA.app'
end
