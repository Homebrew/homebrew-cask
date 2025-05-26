cask "foxit-pdf-editor" do
  version "13.1.7.63027"
  sha256 "f381214ff865a20381ab77faec73bd1f2b5abb801c8426a7fcb3f76633e2d573"

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

  depends_on macos: ">= :sierra"

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
