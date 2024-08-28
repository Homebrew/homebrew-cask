cask "pdf-pals" do
  version "1.8.0"
  sha256 "f9273cb48bba1e9839889f7e003b4e1f6dcf9b3497f5cacac73cd722bf4a45fa"

  url "https://download.pdfpals.com/releases/PDFPals-#{version}.dmg"
  name "PDF Pals"
  desc "AI Chat with PDFs"
  homepage "https://pdfpals.com/"

  livecheck do
    url "https://pdfpals.com/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "PDF Pals.app"

  zap trash: [
    "~/Library/Application Scripts/co.podzim.PDFPals",
    "~/Library/Caches/co.podzim.PDFPals",
    "~/Library/Containers/co.podzim.PDFPals",
    "~/Library/HTTPStorages/co.podzim.PDFPals",
    "~/Library/Preferences/co.podzim.PDFPals.plist",
    "~/Library/WebKit/co.podzim.PDFPals",
  ]
end
