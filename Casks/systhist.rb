cask 'systhist' do
  version '1.7'
  sha256 'fa01dc3654e7eabb6e654dfd7b55b07492068fca684c4d7fd97f6ef0025b4940'

  # eclecticlightdotcom.files.wordpress.com/2018/11/ was verified as official when first introduced to the cask
  url 'https://eclecticlightdotcom.files.wordpress.com/2018/11/systhist17.zip'
  name 'SystHist'
  homepage 'https://eclecticlight.co/downloads/'

  app 'systhist17/SystHist.app'
end
