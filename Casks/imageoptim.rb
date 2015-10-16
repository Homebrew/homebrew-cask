cask :v1 => 'imageoptim' do
  version '1.6.0'
  sha256 'b319e97fb69631c29e5e67caf93ed1e2d000bcbd6bc1cbb33301710c381eaf66'

  url "https://imageoptim.com/ImageOptim#{version}.tar.bz2"
  appcast 'https://imageoptim.com/appcast.xml'
  name 'ImageOptim'
  homepage 'https://imageoptim.com/'
  license :gpl

  app 'ImageOptim.app'
end
