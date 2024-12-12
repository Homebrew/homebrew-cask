cask "loom" do
  arch arm: "-arm64"

  version "0.267.3"
  sha256 arm:   "2ceb8bc194ab63bd6094a93bd6229f00572d27d1e8b778fdaf242d487a1b1b95",
         intel: "0e8ac209cc9605622c6e8e329cf6f199ac47038120ff54e19d1ce93c5bb24b2b"

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
