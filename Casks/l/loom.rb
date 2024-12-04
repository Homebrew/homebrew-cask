cask "loom" do
  arch arm: "-arm64"

  version "0.265.0"
  sha256 arm:   "358dd855e0670f2093763922ce0360efabba02fa443d6c6241ba27946724228e",
         intel: "264e12c20094456d3d07798c0852cc7e16b94f5ea261a0403d8417da959e76d7"

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
