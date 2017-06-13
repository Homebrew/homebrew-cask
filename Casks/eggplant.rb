cask 'eggplant' do
  version :latest
  sha256 :no_check

  url 'http://downloads.testplant.com/downloads/Eggplant/eggPlant.dmg'
  name 'eggPlant Functional'
  homepage 'https://www.testplant.com/dlds/eggplant-functional/'

  app 'eggPlant.app'
end
