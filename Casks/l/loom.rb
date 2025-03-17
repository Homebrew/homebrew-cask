cask "loom" do
  arch arm: "-arm64"

  version "0.282.3"
  sha256 arm:   "006aebf4aa684735c207e7fcbc93667d5aa945257846864403b86b16214dfb46",
         intel: "84ac6f003bd681a176db30e7f655114950248ab7e0e65819c54f83f2455702a0"

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
