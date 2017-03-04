cask 'netnewswire' do
  version '4.0.3-353'
  sha256 '1441baedc7497d998bc4941c0db2c1ca3254b03dc3ee7e202eb1b23355f49b59'

  url "https://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          checkpoint: 'c8c5f8d024115ed4e0541336c4de7e5ba58846958b436fbdaab73c8da6f229dd'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'

  app 'NetNewsWire.app'
end
