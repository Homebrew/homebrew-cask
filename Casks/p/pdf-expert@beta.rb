cask "pdf-expert@beta" do
  version "3.10.9,1084"
  sha256 "8d5ea72d9065b79c19179848bcb1e69d9758389c3ff6d823c3d6e563b6917cd0"

  url "https://downloads.pdfexpert.com/pem#{version.major}/versions/#{version.csv.second}/PDFExpert.zip"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://downloads.pdfexpert.com/pem#{version.major}/beta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "pdf-expert"
  depends_on macos: ">= :monterey"

  app "PDF Expert.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.readdle.pdfexpert-mac.sfl*",
    "~/Library/Application Support/com.readdle.PDFExpert-Mac",
    "~/Library/Application Support/PDF Expert",
    "~/Library/Caches/com.readdle.PDFExpert-Installer",
    "~/Library/Caches/com.readdle.PDFExpert-Mac",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Installer",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac.binarycookies",
    "~/Library/PDF Expert",
    "~/Library/Preferences/com.readdle.PDFExpert-Mac.plist",
  ]
end
