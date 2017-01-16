cask 'molotov' do
  version '1.1.2'
  sha256 '634e811835e36261d4339e251d075914180a021497eab99aed0d64df08fa6662'

  url "http://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
