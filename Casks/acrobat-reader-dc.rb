cask :v1 => 'acrobat-reader-dc' do
  version '1500720033'
  sha256 '46703ba27599512223e9b89c308075a0ddb625287be8e22a87574dfc70a77eb5'

  url "https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version}/AcroRdrDC_#{version}_MUI.dmg"
  homepage 'http://www.adobe.com/ua/products/reader.html'
  license :gratis

  pkg 'AcroRdrDC_1500720033_MUI.pkg'
  uninstall :pkgutil => [
						 'com.adobe.acrobat.DC.reader.app.pkg.MUI',
						 'com.adobe.acrobat.DC.reader.appsupport.pkg.MUI',
						 'com.adobe.acrobat.DC.reader.browser.pkg.MUI',
						],
  	   		:delete => '/Applications/Adobe Acrobat Reader DC.app'

  zap       :delete => [
  						'~/Library/Application Support/Adobe/Acrobat/DC',                   
                        '~/Library/Preferences/com.adobe.Reader.plist',
                	   ]
end
