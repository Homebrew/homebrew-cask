cask 'molotov' do
  version '2.1.2'
  sha256 '6cc00e22616c60e298cd3dd991378770da1e8528a199bf9a249d44176409dd45'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
