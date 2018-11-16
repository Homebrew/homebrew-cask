cask 'ondesoft-itunes-converter' do
  version '4.2.0'
  sha256 'b4cd5f3e72238b29395ad54d3c1373497d4903ca398f1c246af6aeb676ffc86b'

  url 'https://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'https://www.ondesoft.com/itunes_converter/release-history.html'
  name 'Ondesoft iTunes Converter'
  homepage 'https://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
