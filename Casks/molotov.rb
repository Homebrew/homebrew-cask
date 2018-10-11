cask 'molotov' do
  version '2.3.0'
  sha256 '5331c05c49d6af9123539e4a339740f6c39a26aacc7654a17d010a960aeecd6c'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
