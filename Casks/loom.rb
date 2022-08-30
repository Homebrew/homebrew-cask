cask "loom" do
  arch arm: "-arm64"

  version "0.140.0"
  sha256 arm:   "41b8de43ba66e3f552c9d93154d9372bf33a7d2920380a85d3d0f6dd21f17177",
         intel: "9f764fbb1bea535d50ceb9d9ec617f0ebd99f5382d4c6af2bcd25b91d03191a9"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
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
