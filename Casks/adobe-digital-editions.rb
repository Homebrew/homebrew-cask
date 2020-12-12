cask "adobe-digital-editions" do
  version "4.5.11"
  sha256 "4bfdb9fdefb7a65bc5227518531ffba2cd2d547a1293265709a526a153800e7e"

  url "https://adedownload.adobe.com/pub/adobe/digitaleditions/ADE_#{version.major_minor}_Installer.dmg"
  appcast "https://www.adobe.com/solutions/ebook/digital-editions/download.html"
  name "Adobe Digital Editions"
  desc "E-book reader"
  homepage "https://www.adobe.com/solutions/ebook/digital-editions.html"

  pkg "Digital Editions #{version.major_minor} Installer.pkg"

  uninstall quit:    "com.adobe.adobedigitaleditions.app",
            pkgutil: "com.adobe.adobedigitaleditions.app",
            delete:  "/Applications/Adobe Digital Editions.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adobe.adobedigitaleditions.app.sfl*"
end
