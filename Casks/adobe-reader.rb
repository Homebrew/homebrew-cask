cask :v1 => 'adobe-reader' do
  version '2015.009.20069'
  sha256 '5b04f44a94882568aebb51ab31ebbf4bc53a3791a23af7c52af5db02cddd444a'

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
