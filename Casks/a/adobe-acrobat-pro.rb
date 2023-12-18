cask "adobe-acrobat-pro" do
  version "23.008.20423"
  sha256 :no_check

  url "https://trials.adobe.com/AdobeProducts/APRO/Acrobat_HelpX/osx10/Acrobat_DC_Web_WWMUI.dmg",
      user_agent: :fake,
      cookies:    { "MM_TRIALS" => "1234" }
  name "Adobe Acrobat Pro DC"
  desc "View, create, manipulate, print and manage files in Portable Document Format"
  homepage "https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html"

  livecheck do
    url "https://armmf.adobe.com/arm-manifests/mac/AcrobatDC/acrobat/current_version.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  pkg "Acrobat/Acrobat DC Installer.pkg"

  uninstall pkgutil:   [
              "com.adobe.acrobat.DC.*",
              "com.adobe.AcroServicesUpdater",
              "com.adobe.armdc.app.pkg",
              "com.adobe.PDApp.AdobeApplicationManager.installer.pkg",
            ],
            launchctl: [
              "Adobe_Genuine_Software_Integrity_Service",
              "com.adobe.AAM.Startup-1.0",
              "com.adobe.AAM.Updater-1.0",
              "com.adobe.agsservice",
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
            ],
            delete:    "/Applications/Adobe Acrobat DC/"

  zap trash: [
    "~/Library/Application Support/Adobe/Acrobat/",
    "~/Library/Caches/Acrobat",
    "~/Library/Caches/com.adobe.Acrobat.Pro",
    "~/Library/HTTPStorages/com.adobe.Acrobat.Pro",
    "~/Library/HTTPStorages/com.adobe.Acrobat.Pro.binarycookies",
    "~/Library/Preferences/Adobe/Acrobat/",
    "~/Library/Preferences/com.adobe.Acrobat.Pro.plist",
    "~/Library/Saved Application State/com.adobe.Acrobat.Pro.savedState",
    "~/Library/WebKit/com.adobe.Acrobat.Pro",
  ]
end
