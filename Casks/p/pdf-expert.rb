cask "pdf-expert" do
  version "3.10.11,1097"
  sha256 "3f260d9455173689a5c4fc0d2cefbb2cb63bb049b2de1241902d7f8e0f005336"

  url "https://downloads.pdfexpert.com/pem#{version.major}/versions/#{version.csv.second}/PDFExpert.zip"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://downloads.pdfexpert.com/pem3/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "pdf-expert@beta"
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
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PDF Expert",
  ]
end
