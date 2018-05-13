cask 'adobe-acrobat-pro' do
  version '2018'
  sha256 :no_check # required as upstream package is updated in-place

  url 'http://ardownload.adobe.com/pub/adobe/acrobat/mac/AcrobatDC/1801120038/AcrobatDCUpd1801120038.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Acrobat Pro DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  depends_on macos: '>= :mavericks'

  pkg "Acrobat #{version}/Acrobat #{version} Installer.pkg"

  uninstall pkgutil: "com.adobe.acrobat.#{version}.*",
            delete:  "/Applications/Adobe Acrobat #{version}/"

  zap trash: [
               '~/Library/Application Support/Adobe/Acrobat/',
               '~/Library/Caches/Acrobat',
               '~/Library/Caches/com.adobe.Acrobat.Pro',
               '~/Library/Preferences/Adobe/Acrobat/',
               '~/Library/Preferences/com.adobe.Acrobat.Pro.plist',
             ]
end
