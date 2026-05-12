cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.38.2"
  sha256 arm:   "7a9cf4970a08753b3cc10cbfa4c8ec9dd9cd01a5217ae4a9d64453cc77dbb0cb",
         intel: "9132041208e5045cdd9252c0b8e936f9437e8aa7f9ceef813588bf04afd5d20a"

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

  zap trash: [
    "~/Library/Application Support/Longbridge Pro",
    "~/Library/Caches/global.longbridge.app.desktop",
    "~/Library/Caches/global.longbridge.app.desktop.ShipIt",
    "~/Library/HTTPStorages/global.longbridge.app.desktop",
    "~/Library/Logs/Longbridge Pro",
    "~/Library/Preferences/global.longbridge.app.desktop.plist",
  ]
end
