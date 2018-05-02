cask 'ondesoft-itunes-converter' do
  version '2.9.14'
  sha256 'b0800a95e190fdf3a2f11bd6552255678777fe5e0ee8a49fb8ca0f4ca973dceb'

  url 'http://www.ondesoft.com/download/oditunesconverter_mac.dmg'
  appcast 'http://www.ondesoft.com/itunes_converter/release-history.html',
          checkpoint: '28bd1a46f024a3d90308fefa40bea5a6245e5c32620f6c46e00e14471cabf3da'
  name 'Ondesoft iTunes Converter'
  homepage 'http://www.ondesoft.com/itunes_converter/'

  app 'Ondesoft iTunes Converter.app'

  zap trash: [
               '~/Library/Application Support/Ondesoft iTunes Converter',
               '~/Library/Preferences/com.ondesoft.itunesconverter.plist',
             ]
end
