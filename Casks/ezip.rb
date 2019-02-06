cask 'ezip' do
  version '1.5.3'
  sha256 'c8eda0ccb0d21dbc91d7f6b1be2ba33dd2aac91926e28ccd7f043fd6e19495a8'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
