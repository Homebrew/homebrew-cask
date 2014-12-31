cask :v1 => 'imageoptim' do
  version :latest
  sha256 :no_check

  url 'https://imageoptim.com/ImageOptim.tbz2'
  appcast 'http://imageoptim.com/appcast.xml'
  homepage 'http://imageoptim.com/'
  license :gpl

  app 'ImageOptim.app'
end
