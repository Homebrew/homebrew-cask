cask 'adobe-acrobat-pro' do
  version '18'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trials3.adobe.com/AdobeProducts/APRO/#{version}/osx10/Acrobat_DC_Web_WWMUI.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Acrobat Pro DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  depends_on macos: '>= :mavericks'

  pkg 'Acrobat DC/Acrobat DC Installer.pkg'

  uninstall pkgutil: [
                       'com.adobe.acrobat.DC.*',
                       'com.adobe.PDApp.AdobeApplicationManager.installer.pkg',
                       'com.adobe.AcroServicesUpdater',
                       'com.adobe.armdc.app.pkg',
                     ],

            delete:  '/Applications/Adobe Acrobat DC/'

  zap trash: [
               '~/Library/Application Support/Adobe/Acrobat/',
               '~/Library/Caches/Acrobat',
               '~/Library/Caches/com.adobe.Acrobat.Pro',
               '~/Library/Preferences/Adobe/Acrobat/',
               '~/Library/Preferences/com.adobe.Acrobat.Pro.plist',
             ]
end
