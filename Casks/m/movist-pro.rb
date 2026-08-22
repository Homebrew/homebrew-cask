cask "movist-pro" do
  version "2.17.5"
  sha256 "0eefefeaefe409d50c049628b97f822a64645c6d9c35aecf273a4074dbbbea52"

  url "https://update.cocoable.com/MovistPro_#{version}.dmg"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  livecheck do
    url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Movist Pro.app"

  uninstall quit: "com.movist.MovistPro"

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
