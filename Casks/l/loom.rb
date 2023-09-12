cask "loom" do
  arch arm: "-arm64"

  version "0.173.3"
  sha256 arm:   "5d18e86fdb425efffee87c37d85a06919228b881f288e5e5be1b190058fbd494",
         intel: "ca363331f2e826679af9269a949a18ec1e604242efde5028117c76c66e856bee"

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
