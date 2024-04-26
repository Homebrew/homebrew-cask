cask "pdfpals" do
  version "1.6.0"
  sha256 "e082ff0565b8503ff6ab76c7d9d796f87a5631590732e3a2fec2b5b25e46720c"

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
