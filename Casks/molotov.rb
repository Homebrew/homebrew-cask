cask 'molotov' do
  version '4.2.1'
  sha256 'd03d7390c59cc735e5a6c5ff443b661ffa07f9b409d7d1f02a1b69c85c4e5768'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  appcast 'https://desktop-auto-upgrade.molotov.tv/mac/manifest.json'
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
