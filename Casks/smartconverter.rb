cask 'smartconverter' do
  version '2.3.0'
  sha256 'ab070ad520275eb92eaf1fd8c6bc7eec63d566e49fa077c880f667d7024464e5'

  url "http://download.shedworx.com/smartconverter/SmartConverter-#{version}.dmg"
  name 'SmartConverter'
  homepage 'https://shedworx.com/smart-converter-pro'

  app 'SmartConverter.app'

  zap delete: [
                '~/Library/Containers/com.shedworx.smartconverter',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl',
              ]
end
