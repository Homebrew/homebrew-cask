cask "foxit-pdf-editor" do
  version "11.1.2"
  sha256 "95a2e170d1bca989104f5f41dba5f674ad22554566c191c5f1a42e280f14862c"

  url "https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitPDFEditor#{version.no_dots}.L10N.Setup.pkg",
      verified: "cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/"
  name "Foxit PDF Editor"
  desc "PDF Editor"
  homepage "https://www.foxit.com/pdf-editor/"

  livecheck do
    url "https://www.foxit.com/downloads/latest.html?product=Foxit-PDF-Editor-Mac&platform=Mac-OS-X"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)*)/ML/FoxitPDFEditor(\d+)\.L10N\.Setup\.pkg}i)
      next if match.blank?

      "#{match[1]}.#{match[2].delete_prefix(match[1].delete("."))}"
    end
  end

  pkg "FoxitPDFEditor#{version.no_dots}.L10N.Setup.pkg"

  uninstall pkgutil:   "com.foxit.pkg.pdfeditor",
            delete:    [
              "/Applications/Foxit PDF Editor.app",
              "/Library/Application Support/Foxit Software/FoxitService/FoxitPDFEditorUpdateService.app",
              "/Library/LaunchDaemons/com.foxit.PDFEditorUpdateService.plist",
            ],
            launchctl: "com.foxit.PDFEditorUpdateService"

  zap trash: [
    "~/Library/Application Support/Foxit Software/Foxit PDF Editor",
    "~/Library/Caches/com.foxit-software.Foxit PDF Editor",
    "~/Library/Preferences/com.foxit-software.Foxit PDF Editor.plist",
  ]
end
