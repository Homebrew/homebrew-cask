cask "adobe-digital-editions" do
  version "4.5.11"
  sha256 "9a797ad403180d94f180d2c265885cc6b506ec054cd8489578b431319466abe4"

  url "https://adedownload.adobe.com/pub/adobe/digitaleditions/ADE_#{version.major_minor}_Installer.dmg"
  name "Adobe Digital Editions"
  desc "E-book reader"
  homepage "https://www.adobe.com/solutions/ebook/digital-editions.html"

  livecheck do
    url "https://www.adobe.com/solutions/ebook/digital-editions/download.html"
    regex(/Adobe\s*Digital\s*Editions\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Digital Editions #{version.major_minor} Installer.pkg"

  uninstall quit:    "com.adobe.adobedigitaleditions.app",
            pkgutil: "com.adobe.adobedigitaleditions.app",
            delete:  "/Applications/Adobe Digital Editions.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adobe.adobedigitaleditions.app.sfl*"
end
