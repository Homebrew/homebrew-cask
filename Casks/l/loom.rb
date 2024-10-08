cask "loom" do
  arch arm: "-arm64"

  version "0.256.2"
  sha256 arm:   "a5e4cbea72435cecb5449d25501338cb696b3d534786c3d6c0058bff3b96a473",
         intel: "2831f97c551f91ebaa6510b7097d224725b782baf7c36287fb7661d90cc12886"

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
