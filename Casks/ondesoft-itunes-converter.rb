cask 'ondesoft-itunes-converter' do
  version '2.8.3'
  sha256 '8a1f658000558e33cf50db4735fa2e7442761d8c7620963aef349e4ec5db9040'

  url 'http://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'http://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: '47261792b199da1ebdf4cff66bee19c2358b8d7e4061b16c672d3dd380cb5a0a'
  name 'Ondesoft iTunes Converter'
  homepage 'http://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
