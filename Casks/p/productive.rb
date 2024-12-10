cask "productive" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "428b737d972ac5ae651633aec99f2b44dc2ab924052e8d180beec97ede5f90f6",
         intel: "845638bbfeb39d3fcd7eb0e85390b87b4e4704ee214fe4cf719f9dcc4ef7b475"

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
