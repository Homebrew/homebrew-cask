cask 'ondesoft-itunes-converter' do
  version '6.1.2'
  sha256 'f0b3cb0e2b558dc2e0353f96203f7cef8270e289f4f5a020333b63d93fb19a8a'

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
