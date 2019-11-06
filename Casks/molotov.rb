cask 'molotov' do
  version '4.2.0'
  sha256 'c6ad99a9b2c439b46057ba107f5d65047546df7d1e87923302a9c8709ef343ab'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  appcast 'https://desktop-auto-upgrade.molotov.tv/mac/manifest.json'
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
