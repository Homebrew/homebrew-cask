cask 'smart-converter-pro' do
  version '3.0.1'
  sha256 '8fc2e53fea9d9869059b17ff968ed92a81c7bed199f51710f778fc4471214877'

  url "https://download.shedworx.com/scp#{version.major}/SmartConverterPro-#{version}.dmg"
  name 'Smart Converter Pro'
  homepage 'https://shedworx.com/smart-converter-pro'

  depends_on macos: '>= :high_sierra'

  app "Smart Converter Pro #{version.major}.app"

  zap trash: [
               '~/Library/Containers/com.shedworx.smartconverter',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*',
             ]
end
