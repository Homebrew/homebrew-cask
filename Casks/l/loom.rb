cask "loom" do
  arch arm: "-arm64"

  version "0.320.17"
  sha256 arm:   "65f235ab2b855537d6849b104b122948991ddd2181da159a53ad759899dbfda8",
         intel: "8839ec1f35a9eb88bd55965cba43d6107fd5caa83cc3aa4f2779872f75462190"

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
