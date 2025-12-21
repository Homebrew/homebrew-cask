cask "adobe-digital-editions" do
  version "4.5.12"
  sha256 "6d4f365dd04cf76c7303ac5682f99b37fe5962a1f327789fb2a77f019ff978e2"

  url "https://adedownload.adobe.com/pub/adobe/digitaleditions/ADE_#{version.major_minor}_Installer.dmg"
  name "Adobe Digital Editions"
  desc "E-book reader"
  homepage "https://www.adobe.com/solutions/ebook/digital-editions.html"

  livecheck do
    url "https://www.adobe.com/solutions/ebook/digital-editions/download.html",
        user_agent: :browser
    regex(/Adobe\s*Digital\s*Editions\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Digital Editions #{version.major_minor} Installer.pkg"

  uninstall quit:    "com.adobe.adobedigitaleditions.app",
            pkgutil: "com.adobe.adobedigitaleditions.app",
            delete:  "/Applications/Adobe Digital Editions.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adobe.adobedigitaleditions.app.sfl*",
    "~/Library/HTTPStorages/com.adobe.adobedigitaleditions.app",
    "~/Library/Preferences/com.adobe.adobedigitaleditions.app.plist",
  ]
end
