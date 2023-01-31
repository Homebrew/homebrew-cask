cask "loom" do
  arch arm: "-arm64"

  version "0.153.0"
  sha256 arm:   "9f47bf4b148e7bd5ebc0b25b25efdd205f2ccd07210159bd68b0568d8fe0d50e",
         intel: "5a68ec76d8fbdc48d649058a8c42fdba16ef87abb8a726a90162514fda9fddc5"

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
