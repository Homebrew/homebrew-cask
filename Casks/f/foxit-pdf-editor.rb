cask "foxit-pdf-editor" do
  version "13.1.1"
  sha256 "be2377f1a5be98a6531930753d5ecc003c9a7b8642c4b4514a234d74e71b519d"

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
