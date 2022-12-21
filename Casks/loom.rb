cask "loom" do
  arch arm: "-arm64"

  version "0.148.0"
  sha256 arm:   "291cc7e9aa40153583277936a51b8b0ed6cc35d9f04e1638d0cc4af8b97c8e01",
         intel: "2282e2870c8b2719210aff4a0fa22d21c6e3a92c65579d399a73379f8d104682"

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
