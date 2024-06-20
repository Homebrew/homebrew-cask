cask "productive" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "6a8fdcfe18b506ba55c9787da9959bc7b908719179ff872d484f93c182241667",
         intel: "c85ef5495edbb50511bd11cacee8d77370293e7a1627b833d0017ecc4be2c430"

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
