cask "loom" do
  arch arm: "-arm64"

  version "0.214.6"
  sha256 arm:   "b5442579e5024565c8b3a8aa44d84b0e1b2b87a22cb84fe93d6989ea241a2c02",
         intel: "2fe338f201ee4f24b12924219a7a48f194612009f8f0fe5db65421ed67be0cf9"

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
