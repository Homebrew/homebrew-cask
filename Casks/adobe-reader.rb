cask 'adobe-reader' do
  version '2015.010.20060'
  sha256 '4a19212e418a20db4da733f12a1d284e536b27e4eb0f3cd2db1c381344bbb7b8'

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
