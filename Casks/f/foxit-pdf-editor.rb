cask "foxit-pdf-editor" do
  version "13.1.0"
  sha256 "fe6840d915288f1656e5c3b62874f2e4792a790ac8722e7c7b6001f5f12630bb"

  url "https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/#{version.major}.x/#{version}/FoxitPDFEditor#{version.no_dots}.L10N.Setup.pkg",
      verified: "cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/"
  name "Foxit PDF Editor"
  desc "PDF Editor"
  homepage "https://www.foxit.com/pdf-editor/"

  livecheck do
    url "https://www.foxit.com/downloads/latest.html?product=Foxit-PDF-Editor-Mac&platform=Mac-OS-X&language=English"
    regex(/FoxitPDFEditor(\d{2})(\d)(\d)\.L10N\.Setup\.pkg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        "#{match[0]}.#{match[1]}.#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FoxitPDFEditor#{version.no_dots}.L10N.Setup.pkg"

  uninstall launchctl: "com.foxit.PDFEditorUpdateService",
            pkgutil:   "com.foxit.pkg.pdfeditor",
            delete:    [
              "/Applications/Foxit PDF Editor.app",
              "/Library/Application Support/Foxit Software/FoxitService/FoxitPDFEditorUpdateService.app",
              "/Library/LaunchDaemons/com.foxit.PDFEditorUpdateService.plist",
            ]

  zap trash: [
    "~/Library/Application Support/Foxit Software/Foxit PDF Editor",
    "~/Library/Caches/com.foxit-software.Foxit PDF Editor",
    "~/Library/Preferences/com.foxit-software.Foxit PDF Editor.plist",
  ]
end
