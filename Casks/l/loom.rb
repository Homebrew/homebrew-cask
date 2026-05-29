cask "loom" do
  arch arm: "-arm64"

  version "0.351.1"
  sha256 arm:   "51673300df056407cb1bf20fc92c4e1488e14218fc5b88531e6c6edf23ade63a",
         intel: "d77233593c4861ecebf0474754211ec96c62b5f323f94fc078a9a116232c2e4b"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
