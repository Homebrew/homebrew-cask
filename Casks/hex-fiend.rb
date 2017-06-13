cask 'hex-fiend' do
  version '2.7.0'
  sha256 '3b59bbe4b898ae727c07c47f9705fc128c314b57dc76f0ff326127b57a52722a'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: '7a34d2f18299a8f093a53a56338bdb8842b5d833932e424d2759ee184d1dacca'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  app 'Hex Fiend.app'

  zap delete: [
                '~/Library/Preferences/com.ridiculousfish.HexFiend.LSSharedFileList.plist',
                '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
              ]
end
