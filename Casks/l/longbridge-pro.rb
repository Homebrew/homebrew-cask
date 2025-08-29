cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.31.3"
  sha256 arm:   "1f2daa21e7beb9be38a1fc6da963b98e1e37675a9e71a5af6b7c4e25dbd8f494",
         intel: "1aced95afdcb189f7aa005a09880ccec7232e883e33d16d5b78dea67ee7ab656"

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
