cask 'backtobed' do
  version :latest
  sha256 :no_check

  # backtobed.dadiugames.dk was verified as official when first introduced to the cask
  url 'https://backtobed.dadiugames.dk/studentversion/backtobed_osx.zip'
  name 'Back to Bed'
  homepage 'http://www.dadiu.dk/back-to-bed'

  app 'BackToBed.app'
end
