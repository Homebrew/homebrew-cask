cask "loom" do
  arch arm: "-arm64"

  version "0.199.3"
  sha256 arm:   "fd6f50e1f74e31fd5c92a15af441208b69cb69c6215cd09665ffb16b031083e4",
         intel: "85f72094fbb2ee19a99f2820b9427262a23466255320e20e7c21e098389c3909"

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
