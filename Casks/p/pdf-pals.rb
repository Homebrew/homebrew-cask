cask "pdf-pals" do
  version "1.12.0"
  sha256 "60ac37efd5754b98793b6dd44de1c491c5b80d0b0ac6b6715c4a73f15ee9634f"

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
    "~/Library/Application Scripts/6D5N473QP3.co.podzim.PDFPals",
    "~/Library/Application Scripts/co.podzim.PDFPals",
    "~/Library/Caches/co.podzim.PDFPals",
    "~/Library/Containers/co.podzim.PDFPals",
    "~/Library/Group Containers/6D5N473QP3.co.podzim.PDFPals",
    "~/Library/HTTPStorages/co.podzim.PDFPals",
    "~/Library/Preferences/co.podzim.PDFPals.plist",
    "~/Library/WebKit/co.podzim.PDFPals",
  ]
end
