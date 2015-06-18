cask :v1 => 'adobe-reader' do
  version '2015.007.20033'
  sha256 '46703ba27599512223e9b89c308075a0ddb625287be8e22a87574dfc70a77eb5'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.gsub('.', '')[2..-1]}/AcroRdrDC_#{version.gsub('.', '')[2..-1]}_MUI.dmg"
  name 'Adobe Acrobat Reader DC'
  homepage 'http://www.adobe.com/products/reader.html'
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
