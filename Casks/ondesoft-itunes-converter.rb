cask 'ondesoft-itunes-converter' do
  version '5.9.0'
  sha256 '20e8ff9ec9b912e9211b8475c80a3a80eefd2901ccbe60190d2f2b0fb6235946'

  url 'https://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'https://www.ondesoft.com/changelog/oditunesconverter-mac.xml'
  name 'Ondesoft iTunes Converter'
  homepage 'https://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
