cask "loom" do
  arch arm: "-arm64"

  version "0.158.3"
  sha256 arm:   "935f2b42552ac2034ed6c847e20a1ee7d78fe66bb196f7745e6e052b8a0713c7",
         intel: "6249fc577e207d602a1f4a7563baad7b14d3ae0931b4cb0d6fca6cfa2256224a"

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
