cask 'molotov' do
  version '2.0.0'
  sha256 '1c37b387d08f3019f953dd2ddad1e6123e4ac9a5710a3c14741d29f7b58aa84b'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
