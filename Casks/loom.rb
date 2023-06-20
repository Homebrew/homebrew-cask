cask "loom" do
  arch arm: "-arm64"

  version "0.164.0"
  sha256 arm:   "94265fb89efeb2f0573086fcff9ef924c77f929753278df141e08d45488c4215",
         intel: "ae62c249b99c8512ba0ccae4ca7907782df85127cbdd2d02547e417a3c661d22"

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
