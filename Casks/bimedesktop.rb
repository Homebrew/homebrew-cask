cask :v1 => 'bimedesktop' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/bimeio/bimedesktop/BimeDesktop-mac.zip'
  name 'BIME Desktop'
  homepage 'https://www.bimeanalytics.com/'
  license :gratis

  app 'BimeDesktop.app'
end
