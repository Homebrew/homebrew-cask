cask "productive" do
  arch arm: "-arm64"

  version "1.16.2"
  sha256 arm:   "9100ee5a7886c7a6b55a492caa899590a9a865bf8f31bf9758056c334e04af4f",
         intel: "ef97de80e3665743f139f7e5fcd3eb78d86aea00132eaea7c9c27cbcc4346080"

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
