cask 'bimedesktop' do
  version :latest
  sha256 :no_check

  # amazonaws.com/bimeio was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/bimeio/bimedesktop/BimeDesktop-mac.zip'
  name 'BIME Desktop'
  homepage 'https://www.bimeanalytics.com/'

  app 'BimeDesktop.app'
end
