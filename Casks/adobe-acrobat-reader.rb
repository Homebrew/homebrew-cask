cask 'adobe-acrobat-reader' do
  version '18.009.20044'
  sha256 '7cedf7def4554b167b55322b1351a3a470463066a6e338070de57e2b00cb3409'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/Adobe Acrobat Reader DC.app',
            quit:    [
                       'com.adobe.Reader',
                       'com.adobe.AdobeRdrCEFHelper',
                       'com.adobe.AdobeRdrCEF',
                     ]

  zap delete: [
                '~/Library/Preferences/com.adobe.Reader.plist',
                '~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist',
                '~/Library/Preferences/com.adobe.crashreporter.plist',
                '~/Library/Caches/com.adobe.Reader',
                '/Library/Preferences/com.adobe.reader.DC.WebResource.plist',
              ]
end
