cask "adobe-acrobat-reader" do
  version "24.002.21005"
  sha256 "55a53014b5e060658921f6d3a6d20fa64aae5b09fc9f6ea3d78e9c2378dab934"

  url "https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name "Adobe Acrobat Reader"
  desc "View, print, and comment on PDF documents"
  homepage "https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html"

  livecheck do
    url "https://rdc.adobe.io/reader/products?lang=en&site=landing&os=Mac%20OS%2010.15&api_key=dc-get-adobereader-cdn"
    strategy :json do |json|
      json.dig("products", "reader").map { |product| product["version"] }
    end
  end

  auto_updates true

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall launchctl: [
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
            ],
            quit:      [
              "com.adobe.AdobeRdrCEF",
              "com.adobe.AdobeRdrCEFHelper",
              "com.adobe.Reader",
            ],
            pkgutil:   [
              "com.adobe.acrobat.DC.reader.*",
              "com.adobe.armdc.app.pkg",
              "com.adobe.RdrServicesUpdater",
            ],
            delete:    [
              "/Applications/Adobe Acrobat Reader.app",
              "/Library/Preferences/com.adobe.reader.DC.WebResource.plist",
            ]

  zap trash: [
    "~/Library/Caches/com.adobe.Reader",
    "~/Library/HTTPStorages/com.adobe.Reader.binarycookies",
    "~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist",
    "~/Library/Preferences/com.adobe.crashreporter.plist",
    "~/Library/Preferences/com.adobe.Reader.plist",
  ]
end
