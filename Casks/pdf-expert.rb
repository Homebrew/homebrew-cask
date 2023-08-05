cask "pdf-expert" do
  version "3.3,947"
  sha256 "0af12453c3bad8e3df7daa1684cb291fb3096f59db5a05db8441c53fcc122ec4"

  url "https://downloads.pdfexpert.com/pem#{version.major}/versions/#{version.csv.second}/PDFExpert.zip"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://downloads.pdfexpert.com/pem3/release/appcast.xml"
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
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac.binarycookies",
    "~/Library/PDF Expert",
    "~/Library/Preferences/com.readdle.PDFExpert-Mac.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PDF Expert",
  ]
end
