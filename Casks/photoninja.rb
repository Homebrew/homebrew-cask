cask :v1 => 'photoninja' do
  version '1.2.1'
  sha256 '81f62282865c53d2ed653ea2494f44d9e4d82cce623e85c651bb9aa8ccb26794'

  url "https://picturecode.cachefly.net/photoninja/downloads/Install_PhotoNinja_#{version}.dmg"
  homepage 'http://www.picturecode.com/index.php'
  license :unknown    # todo: improve this machine-generated value

  app 'PhotoNinja.app'
end
