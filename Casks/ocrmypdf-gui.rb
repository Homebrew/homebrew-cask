cask "ocrmypdf-gui" do
  version "0.8"
  sha256 "a19b7e3f6729172f0f9df8e9b999ac574c1b7105eeda4744ccc8c12ddd837771"

  url "https://github.com/nexusparadise/ocrmypdf-gui/releases/download/v#{version}/ocrmypdf-gui-v#{version}.zip"
  name "OCRMyPDF GUI"
  desc "Modern GUI application for OCRMyPDF with drag-and-drop support"
  homepage "https://github.com/nexusparadise/ocrmypdf-gui"

  depends_on formula: [
    "ocrmypdf",
    "tesseract-lang",
  ]

  app "ocrmypdf-gui.app"

  zap trash: [
    "~/Library/Application Support/ocrmypdf-gui",
    "~/Library/Preferences/de.ralf-eisenreich.ocrmypdf-gui.plist",
  ]
end
