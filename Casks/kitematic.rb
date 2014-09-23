class Kitematic < Cask
  version '0.2.3'
  sha256 '22a0c8bed6b531de6349b44912e433d582b18573d365bb117dc05d4520f201f9'

  url "https://s3.amazonaws.com/kite-installer/Kitematic-#{version}.zip"
  homepage 'https://kitematic.com/'

  app 'Kitematic.app'
end
