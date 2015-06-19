cask :v1 => 'imageoptim' do
  version :latest
  sha256 :no_check

  url 'https://imageoptim.com/ImageOptim.tbz2'
  appcast 'https://imageoptim.com/appcast.xml'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/'
  license :gpl

  app 'ImageOptim.app'
end
