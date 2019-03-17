cask 'ezip' do
  version '1.7'
  sha256 '04dab63c503dcadd5efb44b6f8f3023f13153d94cb1b7b136ef48f5219116de1'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: '~/Library/Containers/com.jinghaoshe.ezip'
end
