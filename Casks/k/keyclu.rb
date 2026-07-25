cask "keyclu" do
  version "0.32"
  sha256 "0f28de586ae1335621ed6ecff19255b1c320e4fe2ebb0ef2e96fc07ac0104d96"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
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

  uninstall quit: "com.0804Team.KeyClu"

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
