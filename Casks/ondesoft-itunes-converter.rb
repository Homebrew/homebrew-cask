cask 'ondesoft-itunes-converter' do
  version '4.8.0'
  sha256 'd59ad5c2810078999e965da2436026c8229a4060b79d8a747d7ba15b2b9f2bb8'

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
