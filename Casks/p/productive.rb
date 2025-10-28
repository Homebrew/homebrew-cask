cask "productive" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "3bf5069779ca855f94b1754dac9c0c008b632d67e4fd3fdde448a0777891f852",
         intel: "946c53bd9fe49d9f05120dc9c643f053df67f53595497a7aa3a1f48923d14a5b"

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
