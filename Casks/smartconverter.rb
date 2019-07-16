cask 'smartconverter' do
  version '2.4.1'
  sha256 '301f36ba636fd61ef67047eee1cea5da58bad73d221eee373dc03dffe191815e'

  url "https://download.shedworx.com/smartconverter/SmartConverter-#{version}.dmg"
  name 'SmartConverter'
  homepage 'https://shedworx.com/smart-converter-pro'

  app 'SmartConverter.app'

  zap trash: [
               '~/Library/Containers/com.shedworx.smartconverter',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*',
             ]
end
