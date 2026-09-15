cask "productive" do
  arch arm: "-arm64"

  version "1.17.4"
  sha256 arm:   "ed065f75a0726e2a269d2fd8fe78f50335851adc833e34058e4b5d16ec724cb1",
         intel: "d2392869312c41632a90ea41e6a3e9fb96d83d0ad49b51bb8c3db8639c07b49c"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "Agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://download.productive.io/desktop/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Productive.app"

  zap trash: [
    "~/Library/Application Support/productive",
    "~/Library/Caches/io.productive",
    "~/Library/Caches/io.productive.ShipIt",
    "~/Library/Caches/productive-updater",
    "~/Library/Preferences/io.productive.plist",
    "~/Library/Saved Application State/io.productive.savedState",
  ]
end
