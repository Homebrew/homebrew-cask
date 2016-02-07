cask 'adobe-reader' do
  version '2015.010.20056'
  sha256 'bc6c00e34aea417cfe6e3b4c556a798b749d904d0da7ea837edad2fa1584c022'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.gsub('.', '')[2..-1]}/AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://www.adobe.com/products/reader.html'
  license :gratis

  depends_on macos: '>= 10.9'

  pkg "AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.pkg"

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/Adobe Acrobat Reader DC.app'

  zap       delete: [
                      '~/Library/Application Support/Adobe/Acrobat/DC',
                      '~/Library/Preferences/Adobe/Acrobat/DC',
                      '~/Library/Preferences/com.adobe.Reader.plist',
                      '~/Library/Caches/com.adobe.Reader',
                    ]
end
