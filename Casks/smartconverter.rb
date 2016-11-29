cask 'smartconverter' do
  version '2.2.3'
  sha256 'a03f5e070547182e0d7e70f323962ec08efa2347b2f65664c9b1369e4feb067b'

  url "http://download.shedworx.com/smartconverter/SmartConverter-#{version}.dmg"
  name 'SmartConverter'
  homepage 'https://shedworx.com/smart-converter-pro'

  app 'SmartConverter.app'

  zap delete: [
                '~/Library/Containers/com.shedworx.smartconverter',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl',
              ]
end
