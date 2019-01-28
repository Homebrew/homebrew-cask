cask 'ezip' do
  version '1.5.2'
  sha256 'edc8daf31451e55f10662b9ee846b82799fcc2aa589c60377d33c5b2b306da79'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
