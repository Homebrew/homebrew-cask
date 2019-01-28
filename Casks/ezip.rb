cask 'ezip' do
  version '1.5.2'
  sha256 '8b39049f12656fc7ec9dfe50579c1ce39917af34999a118165747c8aeec109b7'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  name 'ezip'
  homepage 'http://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
