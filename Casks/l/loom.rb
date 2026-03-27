cask "loom" do
  arch arm: "-arm64"

  version "0.339.4"
  sha256 arm:   "977c9f39e565a331b069100a6975355a899d0c047c308dac2080644815e881e6",
         intel: "0e6343f9cf5aa9fecc0c6fbf010cfff24384a8b88141652ff61534bafff3ab1e"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
