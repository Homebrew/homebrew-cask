cask "pdf-expert@beta" do
  version "3.13.5,1184"
  sha256 "74cd11bc32169333c8a95aaa10ef421d674b1df0d385d68702585961d73389ed"

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
  depends_on macos: :monterey

  app "PDF Expert.app"

  uninstall quit: "com.readdle.PDFExpert-Mac"

  zap trash: [
    "~/Library/Application Scripts/com.readdle.PDFExpert-Mac.Widgets",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.readdle.pdfexpert-mac.sfl*",
    "~/Library/Application Support/com.readdle.PDFExpert-Mac",
    "~/Library/Application Support/PDF Expert",
    "~/Library/Caches/com.readdle.PDFExpert-Installer",
    "~/Library/Caches/com.readdle.PDFExpert-Mac",
    "~/Library/Containers/com.readdle.PDFExpert-Mac.Widgets",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Installer",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac",
    "~/Library/HTTPStorages/com.readdle.PDFExpert-Mac.binarycookies",
    "~/Library/PDF Expert",
    "~/Library/Preferences/com.readdle.PDFExpert-Mac.plist",
    "~/Library/Preferences/group.com.readdle.PDFExpert-Mac.appsflyer.remotecontrol.plist",
    "~/Library/Preferences/group.com.readdle.PDFExpert-Mac.firebase.plist",
  ]
end
