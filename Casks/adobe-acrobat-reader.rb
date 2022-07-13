cask "adobe-acrobat-reader" do
  version "22.001.20169"
  sha256 "3329f1d68e74dbd541152dd6b20cc81fb4d7102b396b091921586068bc8055cf"

  url "https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name "Adobe Acrobat Reader DC"
  desc "View, print, and comment on PDF documents"
  homepage "https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html"

  livecheck do
    url "https://armmf.adobe.com/arm-manifests/mac/AcrobatDC/reader/current_version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil:   [
              "com.adobe.acrobat.DC.reader.*",
              "com.adobe.armdc.app.pkg",
              "com.adobe.RdrServicesUpdater",
            ],
            delete:    "/Applications/Adobe Acrobat Reader DC.app",
            quit:      [
              "com.adobe.AdobeRdrCEF",
              "com.adobe.AdobeRdrCEFHelper",
              "com.adobe.Reader",
            ],
            launchctl: [
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
            ]

  zap trash: [
    "~/Library/Caches/com.adobe.Reader",
    "~/Library/HTTPStorages/com.adobe.Reader.binarycookies",
    "~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist",
    "~/Library/Preferences/com.adobe.crashreporter.plist",
    "~/Library/Preferences/com.adobe.Reader.plist",
    "/Library/Preferences/com.adobe.reader.DC.WebResource.plist",
  ]
end
