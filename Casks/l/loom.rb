cask "loom" do
  arch arm: "-arm64"

  version "0.232.0"
  sha256 arm:   "65df5d0fbfda739659b0cfdf2154c900f52ab1deb30578aa231e49ecba5059fc",
         intel: "233c45b206daf7d7009c21d736fe4048e231496791c064ca101d399b00b367ad"

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
