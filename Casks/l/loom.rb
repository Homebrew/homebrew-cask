cask "loom" do
  arch arm: "-arm64"

  version "0.206.1"
  sha256 arm:   "51f554f6dc4cb82bfc64e70fbcfdf2322d19b6026d0344a53951f6eba1c3f833",
         intel: "bf610d900627c62a226fe6d2b6f8b385e60a3de2589432044724f65686961e13"

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
