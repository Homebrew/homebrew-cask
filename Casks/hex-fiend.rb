cask 'hex-fiend' do
  version '2.6.0'
  sha256 '20480ad7fe030c81285a15cb359e596ddc5a143d3af3a910f6c71177d3570c21'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: 'd0a278cce23b1e7d73a5c6007c10538e83eeaf9b81d6bb4f903a77466f02afe8'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  app 'Hex Fiend.app'

  zap delete: [
                '~/Library/Preferences/com.ridiculousfish.HexFiend.LSSharedFileList.plist',
                '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
              ]
end
