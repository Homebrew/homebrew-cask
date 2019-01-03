cask 'ondesoft-itunes-converter' do
  version '4.5.0'
  sha256 '88381273b62108743eba0554a4d36bf483295af35414e1f36ab7887926b43aad'

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
