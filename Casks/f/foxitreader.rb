cask "foxitreader" do
  version "2023.3"
  sha256 "025c4a17c3f5bb7387a57917f7eedaa51c1c724eaed21ef75d4dfd110f9d648b"

  url "https://cdn78.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version}/FoxitPDFReader#{version.no_dots}.L10N.Setup.pkg",
      verified: "cdn78.foxitsoftware.com/pub/foxit/reader/desktop/mac/"
  name "Foxit Reader"
  desc "PDF reader"
  homepage "https://www.foxit.com/pdf-reader/"

  livecheck do
    url "https://www.foxit.com/downloads/latest.html?product=Foxit-Reader&platform=Mac-OS-X&language=English"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+\.\d)/FoxitPDFReader(\d+)\.L10N\.Setup\.pkg}i)
      next if match.blank?

      match[1]
    end
  end

  pkg "FoxitPDFReader#{version.no_dots}.L10N.Setup.pkg"

  uninstall launchctl: "com.foxit.PDFReaderUpdateService",
            pkgutil:   "com.foxit.pkg.pdfreader",
            delete:    "/Applications/Foxit PDF Reader.app"

  zap trash: [
    "~/Library/Application Support/Foxit Software/Addon/Foxit PDF Reader",
    "~/Library/Application Support/Foxit Software/Foxit PDF Reader",
    "~/Library/Caches/com.foxit-software.Foxit PDF Reader",
    "~/Library/HTTPStorages/com.foxit-software.Foxit%20PDF%20Reader.binarycookies",
    "~/Library/Preferences/Foxit Software",
    "~/Library/Preferences/com.foxit-software.Foxit PDF Reader*",
    "~/Library/Saved Application State/com.foxit-software.Foxit PDF Reader.savedState",
    "/Library/LaunchDaemons/com.foxit.PDFReaderUpdateService.plist",
  ]
end
