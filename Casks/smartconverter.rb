cask 'smartconverter' do
  version '3.0.0'
  sha256 '6a70ef6d1a5749add4f913aee09698815eed1b15a7f8b058ed2ec3708c40f5cd'

  url "https://download.shedworx.com/smartconverter/SmartConverter-#{version}.dmg"
  name 'SmartConverter'
  homepage 'https://shedworx.com/smart-converter-pro'

  app 'SmartConverter.app'

  zap trash: [
               '~/Library/Containers/com.shedworx.smartconverter',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*',
             ]
end
