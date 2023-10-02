cask "foxitreader" do
  version "2023.2"
  sha256 "62adc1436d16fb6263375cee6b43e6936d11c98fd97c7bab1ca842873e3022f0"

  url "https://cdn78.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/#{version}/FoxitPDFReader#{version.no_dots}.L10N.Setup.pkg",
      verified: "cdn78.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/"
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

  uninstall pkgutil:   "com.foxit.pkg.pdfreader",
            delete:    "/Applications/Foxit PDF Reader.app",
            launchctl: "com.foxit.PDFReaderUpdateService"

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
