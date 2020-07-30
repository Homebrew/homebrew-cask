cask "qr-journal" do
  version "2.0"
  sha256 "af8bcebf795de65955b3cbee1bd4f9568343e982461cd16ae827808b8f7e50ac"

  url "https://www.joshjacob.com/mac-development/QRJournal#{version}.dmg"
  appcast "https://www.joshjacob.com/mac-development/qrjournal.php"
  name "QR Journal"
  homepage "https://www.joshjacob.com/mac-development/qrjournal.php"

  app "QR Journal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.joshjacob.qrjournal.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.joshjacob.qrjournal.help*",
    "~/Library/Containers/com.joshjacob.qrjournal",
  ]
end
