cask "foxitreader" do
  version "2025.3"
  sha256 "36ab2f04bcd082a7dee7b19e938c66c0289a5959a0271774106846b962665195"

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
