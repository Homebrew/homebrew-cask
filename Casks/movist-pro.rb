cask "movist-pro" do
  version "2.8.4,191"
  sha256 "4ece5bb4f028a09b73f89fadcdff44e538a862a33412f06122fcd2b8793ae8b9"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version.csv.first}.dmg",
      verified: "s3.ap-northeast-2.amazonaws.com/update.cocoable.com/"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  livecheck do
    url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
    strategy :sparkle
  end

  app "Movist Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.movist.MovistPro.MovistSafariExtension",
    "~/Library/Application Support/Movist Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.movist.movistpro.sfl2",
    "~/Library/Caches/com.movist.MovistPro",
    "~/Library/Containers/com.movist.MovistPro.MovistSafariExtension",
    "~/Library/HTTPStorages/com.movist.MovistPro",
    "~/Library/HTTPStorages/com.movist.MovistPro.binarycookies",
    "~/Library/Preferences/com.movist.MovistPro.plist",
    "~/Library/Saved Application State/com.movist.MovistPro.savedState",
    "~/Library/WebKit/com.movist.MovistPro",
  ]
end
