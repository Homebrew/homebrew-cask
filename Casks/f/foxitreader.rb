cask "foxitreader" do
  version "2026.1"
  sha256 "002c404067c558ab476cdf9e7b3194382f3434f9802273b6cf41b394bcec0404"

  url "https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/#{version.major}.x/#{version.major_minor}/FoxitPDFReader#{version.major_minor.no_dots}.L10N.Setup.pkg",
      verified: "cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/"
  name "Foxit Reader"
  desc "PDF reader"
  homepage "https://www.foxit.com/pdf-reader/"

  livecheck do
    url "https://www.foxit.com/portal/download/getdownloadform.html?formId=download-reader&retJson=1&platform=Mac-OS-X"
    strategy :json do |json|
      json.dig("package_info", "big_version")&.delete_suffix(".x")
    end
  end

  depends_on macos: ">= :monterey"

  pkg "FoxitPDFReader#{version.major_minor.no_dots}.L10N.Setup.pkg"

  uninstall launchctl: "com.foxit.PDFReaderUpdateService",
            pkgutil:   "com.foxit.pkg.pdfreader",
            delete:    "/Applications/Foxit PDF Reader.app"

  zap trash: [
    "/Library/LaunchDaemons/com.foxit.PDFReaderUpdateService.plist",
    "~/Library/Application Support/Foxit Software/Addon/Foxit PDF Reader",
    "~/Library/Application Support/Foxit Software/Foxit PDF Reader",
    "~/Library/Caches/com.foxit-software.Foxit PDF Reader",
    "~/Library/HTTPStorages/com.foxit-software.Foxit%20PDF%20Reader.binarycookies",
    "~/Library/Preferences/com.foxit-software.Foxit PDF Reader*",
    "~/Library/Preferences/Foxit Software",
    "~/Library/Saved Application State/com.foxit-software.Foxit PDF Reader.savedState",
  ]
end
