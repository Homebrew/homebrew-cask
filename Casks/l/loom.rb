cask "loom" do
  arch arm: "-arm64"

  version "0.287.9"
  sha256 arm:   "175168d3bb4c21d22227d591b881f9a87fe4299c4b2a5e6bf374e67935c245e4",
         intel: "efbc6c38f416c4d2012fa1eaf177af4c7b8420de60ed37e53c37687cfd5fecf0"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
