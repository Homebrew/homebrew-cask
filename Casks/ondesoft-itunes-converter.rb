cask 'ondesoft-itunes-converter' do
  version '5.7.0'
  sha256 '1fad7f9752807ab7dfb77f88a647779575627b61c7eca312999c6696784fc9fc'

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
