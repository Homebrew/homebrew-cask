cask "adobe-acrobat-reader" do
  version "20.013.20074"
  sha256 "898c355164dded96d9da19a250700f3636e52051cddce63d673b7063ecf1f538"

  url "https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  appcast "https://www.adobe.com/devnet-docs/acrobatetk/tools/ReleaseNotesDC/index.html"
  name "Adobe Acrobat Reader DC"
  desc "View, print, and comment on PDF documents"
  homepage "https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html"

  auto_updates true

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall pkgutil:   [
    "com.adobe.acrobat.DC.reader.*",
    "com.adobe.RdrServicesUpdater",
    "com.adobe.armdc.app.pkg",
  ],
            delete:    "/Applications/Adobe Acrobat Reader DC.app",
            quit:      [
              "com.adobe.Reader",
              "com.adobe.AdobeRdrCEFHelper",
              "com.adobe.AdobeRdrCEF",
            ],
            launchctl: [
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
            ]

  zap trash: [
    "~/Library/Preferences/com.adobe.Reader.plist",
    "~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist",
    "~/Library/Preferences/com.adobe.crashreporter.plist",
    "~/Library/Caches/com.adobe.Reader",
    "~/Library/HTTPStorages/com.adobe.Reader.binarycookies",
    "/Library/Preferences/com.adobe.reader.DC.WebResource.plist",
  ]
end
