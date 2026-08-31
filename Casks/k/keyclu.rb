cask "keyclu" do
  version "0.33"
  sha256 "ce92c33b3416b4f840ba2ae1d408dd774b7f1d758455c54bd8a6069fe4263244"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip"
  name "KeyClu"
  desc "Find shortcuts for any installed application"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  livecheck do
    url "https://sergii.tatarenkov.name/keyclu/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "KeyClu.app"

  uninstall launchctl: "com.0804Team.KeyCluXPCService",
            quit:      "com.0804Team.KeyClu"
            

  zap trash: [
    "~/Library/Application Support/KeyClu",
    "~/Library/Caches/com.0804Team.KeyClu",
    "~/Library/Containers/com.0804Team.KeyClu",
    "~/Library/Group Containers/group.com.0804Team.KeyClu",
    "~/Library/HTTPStorages/com.0804Team.KeyClu",
    "~/Library/Preferences/com.0804Team.KeyClu.plist",
    "~/Library/Saved Application State/com.0804Team.KeyClu.savedState",
    "~/Library/WebKit/com.0804Team.KeyClu",
  ]
end
