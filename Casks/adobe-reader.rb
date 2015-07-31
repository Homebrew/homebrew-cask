cask :v1 => 'adobe-reader' do
  version '2015.008.20082'
  sha256 'bff60679ff22e97addc4d6cb7baa60276e076fa6e1501289e2f89eddbf5f34a8'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.gsub('.', '')[2..-1]}/AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'https://www.adobe.com/products/reader.html'
  license :gratis
  tags :vendor => 'Adobe'

  depends_on :macos => '>= 10.9'

  pkg "AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.pkg"

  uninstall :pkgutil => 'com.adobe.acrobat.DC.reader.*',
            :delete => '/Applications/Adobe Acrobat Reader DC.app'
  zap       :delete => [
                        '~/Library/Application Support/Adobe/Acrobat/DC',
                        '~/Library/Preferences/Adobe/Acrobat/DC',
                        '~/Library/Preferences/com.adobe.Reader.plist',
                        '~/Library/Caches/com.adobe.Reader'
                       ]
end
