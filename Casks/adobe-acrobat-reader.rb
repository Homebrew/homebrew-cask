cask 'adobe-acrobat-reader' do
  version '19.010.20099'
  sha256 '00eb772c1a3c714f5298cf4fffe117d39fd27722d8dc9e8c35cc9bf2232d91a5'

  url "http://ardownload.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  appcast 'https://get.adobe.com/reader/'
  name 'Adobe Acrobat Reader DC'
  homepage 'https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html'

  auto_updates true

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil:   [
                         'com.adobe.acrobat.DC.reader.*',
                         'com.adobe.RdrServicesUpdater',
                         'com.adobe.armdc.app.pkg',
                       ],
            delete:    '/Applications/Adobe Acrobat Reader DC.app',
            quit:      [
                         'com.adobe.Reader',
                         'com.adobe.AdobeRdrCEFHelper',
                         'com.adobe.AdobeRdrCEF',
                       ],
            launchctl: [
                         'com.adobe.ARMDC.Communicator',
                         'com.adobe.ARMDC.SMJobBlessHelper',
                         'com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d',
                       ]

  zap trash: [
               '~/Library/Preferences/com.adobe.Reader.plist',
               '~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist',
               '~/Library/Preferences/com.adobe.crashreporter.plist',
               '~/Library/Caches/com.adobe.Reader',
               '/Library/Preferences/com.adobe.reader.DC.WebResource.plist',
             ]
end
