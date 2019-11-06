cask 'molotov' do
  version '4.1.1'
  sha256 'a00de03f2e78fff49ee18e409b27d5f6dfbf905fa21817e2b6f262e9f47d425e'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  appcast 'https://desktop-auto-upgrade.molotov.tv/mac/manifest.json'
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
