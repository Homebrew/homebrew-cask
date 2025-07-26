cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.30.3"
  sha256 arm:   "a49f7114e467f40f58858bc2df1cc68d1b3531f0ce141dca4c636aa2fcef72c0",
         intel: "88c1a87d7e7cf2e13349c84e25249c49676ab80d7690a90badbb8430db13fc57"

  url "https://download.lbkrs.com/longbridge-desktop/prod/longbridge-pro-#{version}-mac-#{arch}.dmg",
      verified: "download.lbkrs.com/longbridge-desktop/prod/"
  name "Longbridge Pro"
  desc "Stock trading platform"
  homepage "https://longbridge.com/"

  livecheck do
    url "https://download.wbrks.com/longbridge-desktop/prod/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Longbridge Pro.app"

  zap trash: [
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
