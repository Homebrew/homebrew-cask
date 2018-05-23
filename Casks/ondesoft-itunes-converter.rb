cask 'ondesoft-itunes-converter' do
  version '2.9.15'
  sha256 '1672f1822265a2987188eb6afb28b79fee11996252df72f437b0a4f0cc508d24'

  url 'http://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'http://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: 'c9f3e0e4ba593cc92f5556b3d7bf515b86a6fed1fd2937ef0d7298ab9ae5ffc9'
  name 'Ondesoft iTunes Converter'
  homepage 'http://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
