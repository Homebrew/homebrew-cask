cask "loom" do
  arch arm: "-arm64"

  version "0.349.0"
  sha256 arm:   "039f1aec076189f23acf58ad6638107fe001182502bfdbf59327cec024db4d35",
         intel: "b52874b1dfe109a3a924a2aa36826f8f32abb98051b019e8055243262ace8b47"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
