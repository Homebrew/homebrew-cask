cask 'ondesoft-itunes-converter' do
  version '2.9.9'
  sha256 'eacd031af9ea7e447f7b236e1fe0fbe1945f31933924ebc356fb2101070e07a0'

  url 'http://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'http://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: '70a8a2daee37ec8d6caa402b955331b055f3907907bbec73e97765d159590f77'
  name 'Ondesoft iTunes Converter'
  homepage 'http://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
