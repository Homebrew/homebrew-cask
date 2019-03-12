cask 'ezip' do
  version '1.6'
  sha256 'b534ea00f2b094e8a420b4d4a4ed763c3e373969e149b370d532a79027dc9cc8'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
