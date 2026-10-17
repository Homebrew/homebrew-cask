cask "ableset" do
  arch arm: "-arm64"

  version "3.1.8"
  sha256 arm:   "74839490fbe2df0dd80bf551168e040f3435bd1de34b31a7ffb85dd46be56cf5",
         intel: "8c9a71f8416c55bef2cf075dca3a43dca2ad42716015b7cc27124c6a7a119e2f"

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
