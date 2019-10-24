cask 'smart-converter-pro' do
  version '2.4.2'
  sha256 '5dbde9f84974e301d0ee3fbbc61f117a8b75d22b1373c8de265fa626199d2822'

  url "https://download.shedworx.com/scp2/SmartConverterPro-#{version}.dmg"
  name 'Smart Converter Pro'
  homepage 'https://shedworx.com/smart-converter-pro'

  app "Smart Converter Pro #{version.major}.app"

  zap trash: [
               '~/Library/Containers/com.shedworx.smartconverter',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*',
             ]
end
