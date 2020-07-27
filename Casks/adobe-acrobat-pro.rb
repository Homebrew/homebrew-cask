cask "adobe-acrobat-pro" do
  version "19"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trials3.adobe.com/AdobeProducts/APRO/#{version}/osx10/Acrobat_DC_Web_WWMUI.dmg",
      user_agent: :fake,
      cookies:    { "MM_TRIALS" => "1234" }
  name "Adobe Acrobat Pro DC"
  homepage "https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html"

  pkg "Acrobat DC/Acrobat DC Installer.pkg"

  uninstall pkgutil:   [
    "com.adobe.acrobat.DC.*",
    "com.adobe.PDApp.AdobeApplicationManager.installer.pkg",
    "com.adobe.AcroServicesUpdater",
    "com.adobe.armdc.app.pkg",
  ],
            launchctl: [
              "Adobe_Genuine_Software_Integrity_Service",
              "com.adobe.AAM.Startup-1.0",
              "com.adobe.AAM.Updater-1.0",
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
              "com.adobe.agsservice",
            ],
            delete:    "/Applications/Adobe Acrobat DC/"

  zap trash: [
    "~/Library/Application Support/Adobe/Acrobat/",
    "~/Library/Caches/Acrobat",
    "~/Library/Caches/com.adobe.Acrobat.Pro",
    "~/Library/Preferences/Adobe/Acrobat/",
    "~/Library/Preferences/com.adobe.Acrobat.Pro.plist",
  ]
end
