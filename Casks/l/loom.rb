cask "loom" do
  arch arm: "-arm64"

  version "0.248.2"
  sha256 arm:   "8b3470443fb93e1a2b0119926791b687448b424010bf3e82dbc6708b5201321d",
         intel: "8b3a6a8d2cfd8b7993bb39dc899f6ecbbe4901ee8c54c9baee69159ed02d8705"

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
