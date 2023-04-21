cask "movist-pro" do
  version "2.10.4"
  sha256 "2a03883f504920c2c3944291ffc45abd4fd9a125c85193d663568a785212450c"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.dmg",
      verified: "s3.ap-northeast-2.amazonaws.com/update.cocoable.com/"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  livecheck do
    url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Movist Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.movist.MovistPro.MovistSafariExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.movist.movistpro.sfl2",
    "~/Library/Application Support/Movist Pro",
    "~/Library/Caches/com.movist.MovistPro",
    "~/Library/Containers/com.movist.MovistPro.MovistSafariExtension",
    "~/Library/HTTPStorages/com.movist.MovistPro",
    "~/Library/HTTPStorages/com.movist.MovistPro.binarycookies",
    "~/Library/Preferences/com.movist.MovistPro.plist",
    "~/Library/Saved Application State/com.movist.MovistPro.savedState",
    "~/Library/WebKit/com.movist.MovistPro",
  ]
end
