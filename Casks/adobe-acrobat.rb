cask 'adobe-acrobat' do
  version '2015'
  sha256 'ffe890d946c5011c96436375e3072c58afc838c450e342f2b1cfc27f5a2ade99'

  url "http://trials3.adobe.com/AdobeProducts/APRO/Acrobat_HelpX/osx10/Acrobat_#{version}_Web_WWMUI.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Acrobat Pro DC'
  homepage 'https://www.adobe.com/products/reader.html'
  license :commercial

  depends_on macos: '>= 10.9'

  pkg "Acrobat #{version}/Acrobat #{version} Installer.pkg"

  uninstall pkgutil: "com.adobe.acrobat.#{version}.*",
            delete:  "/Applications/Adobe Acrobat #{version}/"

  zap       delete: [
                      '~/Library/Application Support/Adobe/Acrobat/',
                      '~/Library/Preferences/Adobe/Acrobat/',
                      '~/Library/Preferences/com.adobe.Acrobat.Pro.plist',
                      '~/Library/Caches/com.adobe.Acrobat.Pro',
                      '~/Library/Caches/Acrobat',
                    ]
end
