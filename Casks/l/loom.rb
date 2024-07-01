cask "loom" do
  arch arm: "-arm64"

  version "0.236.1"
  sha256 arm:   "660791afb9c8099d269a548c2bf73c0101c785102335a1325b5de77b1031cb69",
         intel: "7a0834752630f667a6a5ba1ef00efed055d2411ec4b71080a448f70bfb2d1fe9"

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
