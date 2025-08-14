cask "productive" do
  arch arm: "-arm64"

  version "1.15.0"
  sha256 arm:   "aabe2be520093e871cc111e2f8112d8c54f88e9018b99ccd0937d07bf6471b69",
         intel: "46b21892acc7c6e00d8e1aa4e062bf5c653a765f4a207f6cb67c1c99238ff12a"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "Agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://download.productive.io/desktop/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
