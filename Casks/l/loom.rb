cask "loom" do
  arch arm: "-arm64"

  version "0.255.9"
  sha256 arm:   "a2cecba205b1a1847991548398ee866728cbd56ccca7cac314b4a2559d3d8adb",
         intel: "5a2032aeb9ebc5e6504a73dabf9dfdd6d04ad60c293004b65f026ad334d67e55"

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
