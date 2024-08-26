cask "loom" do
  arch arm: "-arm64"

  version "0.250.0"
  sha256 arm:   "a27323d92547d3b8aeee603afa3e26760247faf68ae48548922b64f5873f89f2",
         intel: "c45ea9f962613390de09c5414b53411cec057f9e3a516e5f2333aa1382fbeb2b"

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
