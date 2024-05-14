cask "pdf-pals" do
  version "1.7.0"
  sha256 "03f43a293d2cc2f337ae0e11074d0c9237ee0b9ac05341dda3e39b7d7a35fc87"

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
