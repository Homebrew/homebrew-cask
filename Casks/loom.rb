cask "loom" do
  arch arm: "-arm64"

  version "0.151.0"
  sha256 arm:   "d7e0751af7e912d2dba1ad9b3465d320657f3f7072a67c794463e1861afdb1e3",
         intel: "b8e6a911cda03943cc42245d0003284b69ca1419e46ce45415d459d94edb5cae"

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
