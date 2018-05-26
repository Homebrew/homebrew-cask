cask 'ondesoft-itunes-converter' do
  version '2.9.15'
  sha256 '2794f9e8e168d18a9db7ff5be2c1b0dedf4b41682a5d73b63749592414e31864'

  url 'https://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'https://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: 'c210148f9a8d03f6d269d03129c489841f98ff28bae7d6304e57a9b06a8ad449'
  name 'Ondesoft iTunes Converter'
  homepage 'https://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
