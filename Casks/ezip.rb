cask 'ezip' do
  version '1.7.1'
  sha256 '694f5630e0fc57c225c651d3a9fb6ba35ddad8da586c1b1afbd665c58dc0426c'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
