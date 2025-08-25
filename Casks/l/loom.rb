cask "loom" do
  arch arm: "-arm64"

  version "0.313.2"
  sha256 arm:   "abecbed372e4465968f941ba6247686a663dd9855cfd63ecc4a642dac34ef758",
         intel: "55cf45b8c0eef8fb66abafd07020d3a39772b415ee86696d526d3db52d8909b6"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
