cask 'molotov' do
  version '2.2.1'
  sha256 '8e04885d0c0a9f925aa1255f3742732e24ae57c47fc56ce079a7de4c3de1b5f2'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
