cask 'molotov' do
  version '1.5.1'
  sha256 '2999432de126faa94b2321e6f6a6aab3bf01a40a6d09729d92cf5242221e0d24'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
