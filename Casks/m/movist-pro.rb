cask "movist-pro" do
  version "2.11.3"
  sha256 "d44ee9db9062f6a3e86519b176e1e5d7d82dc7f384c2bf510b2c838fa86d0e6c"

  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.dmg",
      verified: "s3.ap-northeast-2.amazonaws.com/update.cocoable.com/"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  livecheck do
    url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Movist Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.movist.MovistPro.MovistSafariExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.movist.movistpro.sfl*",
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
