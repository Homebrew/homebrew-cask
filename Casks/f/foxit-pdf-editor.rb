cask "foxit-pdf-editor" do
  version "14.0.7.69441"
  sha256 "c746d847a3e9083e92de58e722abc365016afd429500890a4cebb74802c7c5bd"

  url "https://cdn01.foxitsoftware.com/pub/foxit/editor/desktop/mac/#{version.major_minor_patch}/FoxitPDFEditor#{version.major_minor_patch.no_dots}.L10N.Setup.pkg"
  name "Foxit PDF Editor"
  desc "PDF Editor"
  homepage "https://www.foxit.com/pdf-editor/"

  livecheck do
    url "https://www.foxit.com/portal/download/getdownloadform.html?formId=download-phantom-mac&retJson=1&platform=Mac-OS-X"
    strategy :json do |json|
      json.dig("package_info", "version")
    end
  end

  depends_on :macos

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
