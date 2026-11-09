cask "ableset" do
  arch arm: "-arm64"

  version "3.1.9"
  sha256 arm:   "477f6879638947b65894aef5a615dc2342cb20c085be467ff4202b1a43ff2c82",
         intel: "27a0cc8d003f8a77dbaa21c2d510b348f2fc7197aa8235239442f049373398eb"

  url "https://s3.amazonaws.com/download.ableset.app/mac#{arch}/AbleSet-#{version}#{arch}.dmg"
  name "AbleSet"
  desc "Ableton setlist manager"
  homepage "https://ableset.app/"

  livecheck do
    url "https://s3.amazonaws.com/download.ableset.app/mac#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "AbleSet.app"

  uninstall quit: "org.leolabs.ableset"

  zap trash: [
    "~/Library/Application Support/ableset",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.leolabs.ableset.sfl*",
    "~/Library/Caches/ableset-updater",
    "~/Library/Caches/ableset_controller",
    "~/Library/Caches/org.leolabs.ableset",
    "~/Library/Caches/org.leolabs.ableset.Shipit",
    "~/Library/HTTPStorages/org.leolabs.ableset",
    "~/Library/Preferences/org.leolabs.ableset.plist",
    "~/Library/Saved Application State/org.leolabs.ableset.savedState",
  ]
end
