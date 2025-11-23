cask "qr-journal" do
  version "3.0"
  sha256 "f4b0692cee9eedc2b06688f0210be0126865bcd90f538b0fd695fc8bf647dd3b"

  url "https://www.joshjacob.com/mac-development/QRJournal#{version}.dmg"
  name "QR Journal"
  desc "Allows users with an iSight (or compatible) camera to read QR codes"
  homepage "https://www.joshjacob.com/mac-development/qrjournal.php"

  livecheck do
    url :homepage
    regex(%r{href=.*?/QRJournal(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "QR Journal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.joshjacob.qrjournal.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.joshjacob.qrjournal.help*",
    "~/Library/Containers/com.joshjacob.qrjournal",
  ]
end
