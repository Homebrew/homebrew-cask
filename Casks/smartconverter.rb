cask 'smartconverter' do
  version '2.4.0'
  sha256 'a690f9da810723a6115cd7cc3e7e56b628f53cbd858158de85e4c8e52ae99cf5'

  url "http://download.shedworx.com/smartconverter/SmartConverter-#{version}.dmg"
  name 'SmartConverter'
  homepage 'https://shedworx.com/smart-converter-pro'

  app 'SmartConverter.app'

  zap trash: [
               '~/Library/Containers/com.shedworx.smartconverter',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*',
             ]
end
