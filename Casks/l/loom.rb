cask "loom" do
  arch arm: "-arm64"

  version "0.297.3"
  sha256 arm:   "57df27439961cdac59a8bd226ece8a6a37b58ff0579121ea7192d58406de3a8a",
         intel: "48a98d1d38a5a60f90c1dc5efb19e2b6315f6f201fca6ab026a017bc26dbc876"

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
