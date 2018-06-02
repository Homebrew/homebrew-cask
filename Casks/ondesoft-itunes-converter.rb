cask 'ondesoft-itunes-converter' do
  version '2.10.5'
  sha256 'aae4fc741accaf64cccecdc01b6c02eda3cab34d804ac87ab168acbf00d5dde2'

  url 'https://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'https://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: '2976778d87685d41542d7067123e2ee782e34c157a551b738843f0cc34a28156'
  name 'Ondesoft iTunes Converter'
  homepage 'https://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
