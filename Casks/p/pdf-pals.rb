cask "pdf-pals" do
  version "1.11.0"
  sha256 "7499b79ed03e2b44cd6db8329576ad22308f3fea328f58ff71fc93352c334556"

  url "https://download.pdfpals.com/releases/PDFPals-#{version}.dmg"
  name "PDF Pals"
  desc "AI Chat with PDFs"
  homepage "https://pdfpals.com/"

  livecheck do
    url "https://pdfpals.com/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
