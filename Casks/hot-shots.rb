cask 'hot-shots' do
  version '2.5'
  sha256 'ab8b108b6fba399e6adc6eb69b0964c3a86645a2c845d95817bbf03b61198a03'

  url "https://gngrwzrd.com/HotShots#{version.major}.zip"
  appcast "https://www.gngrwzrd.com/hotshots#{version.major}-appcast.xml",
          checkpoint: '9f6489912f162d111824e489cdc9d42af56ea870ae5a653745b020f9d1955275'
  name 'Hot Shots'
  homepage 'https://gngrwzrd.com/hotshots/'

  app 'Hot Shots.app'
end
