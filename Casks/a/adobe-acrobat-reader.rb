cask "adobe-acrobat-reader" do
  version "25.001.21288"
  sha256 "7d4f7d9c4452d5c84326aa2403c05cff38036edef6f14de45fea8b32f8d751e1"

  url "https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/#{version.no_dots}/AcroRdrDC_#{version.no_dots}_MUI.dmg"
  name "Adobe Acrobat Reader"
  desc "View, print, and comment on PDF documents"
  homepage "https://www.adobe.com/acrobat/pdf-reader.html"

  livecheck do
    url "https://rdc.adobe.io/reader/products?lang=en&site=landing&os=Mac%20OS%2012.0&api_key=dc-get-adobereader-cdn"
    strategy :json do |json|
      json.dig("products", "reader").map { |product| product["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "AcroRdrDC_#{version.no_dots}_MUI.pkg"

  uninstall launchctl:  [
              "com.adobe.ARMDC.Communicator",
              "com.adobe.ARMDC.SMJobBlessHelper",
              "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
            ],
            quit:       [
              "com.adobe.AdobeRdrCEF",
              "com.adobe.AdobeRdrCEFHelper",
              "com.adobe.Reader",
            ],
            pkgutil:    [
              "com.adobe.acrobat.DC.reader.*",
              "com.adobe.armdc.app.pkg",
              "com.adobe.RdrServicesUpdater",
            ],
            delete:     [
              "/Applications/Adobe Acrobat Reader.app",
              "/Library/Preferences/com.adobe.reader.DC.WebResource.plist",
            ],
            on_upgrade: :quit

  zap trash: [
    "~/Library/Application Support/Adobe/Acrobat",
    "~/Library/Application Support/Adobe/AcroCef",
    "~/Library/Caches/com.adobe.Reader",
    "~/Library/HTTPStorages/com.adobe.Reader",
    "~/Library/HTTPStorages/com.adobe.Reader.binarycookies",
    "~/Library/Preferences/com.adobe.AdobeRdrCEFHelper.plist",
    "~/Library/Preferences/com.adobe.crashreporter.plist",
    "~/Library/Preferences/com.adobe.Install.Reader.plist",
    "~/Library/Preferences/com.adobe.Reader.plist",
    "~/Library/Saved Application State/com.adobe.Reader.savedState",
  ]
end
