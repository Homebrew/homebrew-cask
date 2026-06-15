cask "productive" do
  arch arm: "-arm64"

  version "1.17.3"
  sha256 arm:   "a0a10ea63cd2601c0a35de4c78a99eb8eebfa19c5000bfebde261de0ce090047",
         intel: "c56379442a9fec1e57dd0e7204f73e44d19438a63abbc68b433ec59a6a316aa8"

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
