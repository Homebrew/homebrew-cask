cask :v1 => 'flickr-uploadr' do
  version '3.2.1'
  sha256 'c41a1e4a8b6f7e3c9cb5d1adfc1b3bdc4a835dfbc31f16c0dbd657b74523214a'

  url "http://h.yimg.com/ce/flickr/FlickrUploadr-3.2/FlickrUploadr-#{version}-2009.06.10.01-en.dmg"
  homepage 'http://www.flickr.com/tools/'
  license :unknown    # todo: improve this machine-generated value

  app 'Flickr Uploadr.app'
end
