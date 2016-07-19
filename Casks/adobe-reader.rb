cask 'adobe-reader' do
  version '2015.017.20050'
  sha256 '38509de0ceda1b51d44f247098d2933455e6c5a34cc977132ae9264dca0ebecf'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots[2..-1]}/AcroRdrDC_#{version.no_dots[2..-1]}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://www.adobe.com/products/reader.html'
  license :gratis

  depends_on macos: '>= 10.9'

  pkg "AcroRdrDC_#{version.no_dots[2..-1]}_MUI.pkg"

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/Adobe Acrobat Reader DC.app'

  zap       delete: [
                      '~/Library/Application Support/Adobe/Acrobat/DC',
                      '~/Library/Preferences/Adobe/Acrobat/DC',
                      '~/Library/Preferences/com.adobe.Reader.plist',
                      '~/Library/Caches/com.adobe.Reader',
                    ]
end
