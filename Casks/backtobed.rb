cask 'backtobed' do
  version :latest
  sha256 :no_check

  url 'http://backtobed.dadiugames.dk/studentversion/backtobed_osx.zip'
  name 'Back to Bed'
  homepage 'http://backtobed.dadiugames.dk/'
  license :gratis

  app 'BackToBed.app'
end
