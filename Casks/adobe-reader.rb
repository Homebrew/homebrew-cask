cask 'adobe-reader' do
  version '15.020.20039'
  sha256 'fb4bb75835c83ddd1cbd1aa1e1e717daf2f9a3513b01f087dc703856379f6a6a'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  depends_on macos: '>= :mavericks'

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/Adobe Acrobat Reader DC.app'

  zap       delete: [
                      '~/Library/Application Support/Adobe/Acrobat/DC',
                      '~/Library/Preferences/Adobe/Acrobat/DC',
                      '~/Library/Preferences/com.adobe.Reader.plist',
                      '~/Library/Caches/com.adobe.Reader',
                    ]
end
