cask "productive" do
  arch arm: "-arm64"

  version "1.17.2"
  sha256 arm:   "32f02535ffd06996d4f48cbe6ef0b3342c79e33a2c1e458fe479a613bbb157f7",
         intel: "356e78f1023dbabbd1bd88f1f654a5e9b09e0dcccd1755c4aae0d62f5eb7e33a"

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
