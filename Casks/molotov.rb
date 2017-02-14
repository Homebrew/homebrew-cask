cask 'molotov' do
  version '1.2.2'
  sha256 '6c32206e5a922d246e1a5a6b6462a5b531c37cdaceb05bd6f32f8c85e5c8b5ff'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
