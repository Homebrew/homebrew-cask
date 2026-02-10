cask "foxit-pdf-editor" do
  version "14.0.2.69164"
  sha256 "6d8ae92e1cdf33a95e0fbcead714d3fa4d6df9fe55de4f7edf99d86182648520"

  url "https://cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/#{version.major}.x/#{version.major_minor_patch}/FoxitPDFEditor#{version.major_minor_patch.no_dots}.L10N.Setup.pkg",
      verified: "cdn01.foxitsoftware.com/pub/foxit/phantomPDF/desktop/mac/"
  name "Foxit PDF Editor"
  desc "PDF Editor"
  homepage "https://www.foxit.com/pdf-editor/"

  livecheck do
    url "https://www.foxit.com/portal/download/getdownloadform.html?formId=download-phantom-mac&retJson=1&platform=Mac-OS-X"
    strategy :json do |json|
      json.dig("package_info", "version")
    end
  end

  pkg "FoxitPDFEditor#{version.major_minor_patch.no_dots}.L10N.Setup.pkg"

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
