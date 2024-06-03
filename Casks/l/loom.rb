cask "loom" do
  arch arm: "-arm64"

  version "0.229.2"
  sha256 arm:   "984fc09eac8782551924674d948819d38d6382b43abbdcd7ec9f7004370ebdf3",
         intel: "f9f6c0cc8e2eca87b91ff7d48ded9578a37c730ac457d291887fed8ef7159571"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
