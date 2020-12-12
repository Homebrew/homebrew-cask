cask "android-file-transfer" do
  version "1.0.12,5071136"
  sha256 "b9249399a351e8146358ff1ddb546c68a63134b780be795ae64e0a4c2258bc61"

  url "https://dl.google.com/dl/androidjumper/mtp/#{version.after_comma}/androidfiletransfer.dmg",
      verified: "google.com/dl/androidjumper/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg",
          must_contain: version.after_comma
  name "Android File Transfer"
  desc "Transfer files from and to an Android smartphone"
  homepage "https://www.android.com/filetransfer/"

  app "Android File Transfer.app"

  zap trash: [
    "~/Library/Application Support/Google/Android File Transfer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.android.mtpviewer.sfl*",
    "~/Library/Preferences/com.google.android.mtpviewer.plist",
  ],
      rmdir: "~/Library/Application Support/Google/"
end
