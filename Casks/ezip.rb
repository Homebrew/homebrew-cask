cask 'ezip' do
  version '1.5.5'
  sha256 'c62c6fe55adfe6254a496686b039c0c48d3d3c7bd7dc7839264ddfe0f7933f71'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
