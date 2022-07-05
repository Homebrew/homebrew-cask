cask "pdf-expert" do
  version "2.5.21,761"
  sha256 "7906dc0b154c928a2b6c5c341336a1fec5f9c6ba059de08b8c91eca160f94ff6"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.csv.second}/PDFExpert.dmg",
      verified: "d1ke680phyeohy.cloudfront.net/versions/"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://d1ke680phyeohy.cloudfront.net/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/pdf-expert-beta"
  depends_on macos: ">= :high_sierra"

  app "PDF Expert.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.readdle.pdfexpert-mac.sfl2",
    "~/Library/Application Support/com.readdle.PDFExpert-Mac",
    "~/Library/Application Support/PDF Expert",
    "~/Library/Caches/com.readdle.PDFExpert-Installer",
    "~/Library/Caches/com.readdle.PDFExpert-Mac",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Installer",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac.binarycookies",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac",
    "~/Library/PDF Expert",
    "~/Library/Preferences/com.readdle.PDFExpert-Mac.plist",
  ]
end
