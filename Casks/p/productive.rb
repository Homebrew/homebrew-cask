cask "productive" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "09f9d3c6b18e79c5d43ee458c254d38a2d68da1ea2b2c95c58253a1cbd9f259c",
         intel: "ad14a3e7a886cbdebff4d0b95a775c4fb263339d06d9d462c01662d1bdd3d6d9"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "Agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://download.productive.io/desktop/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
