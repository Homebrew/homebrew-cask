cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.11"
  sha256 arm:   "cdf81a4d7ad89f12a0c4024b23e5b8aaca8a4be503ae1e8e34664ecedff2b3f2",
         intel: "dc5444de099d9ab9bf1cabd5c32b61ad5a176d4d91e879c45d5340f9a3f7b4b1"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg",
      verified: "download.lbkrs.com/longbridge-desktop/prod/"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Longbridge Pro.app"

  uninstall quit: "global.longbridge.app.desktop"

  zap trash: [
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
