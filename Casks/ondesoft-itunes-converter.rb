cask 'ondesoft-itunes-converter' do
  version '6.0.0'
  sha256 'a3f199c59c5811cc9ed875b496a67186a6710082785b6f8fc19da7bf8148831d'

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
