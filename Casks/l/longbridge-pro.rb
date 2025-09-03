cask "longbridge-pro" do
  arch arm: "arm64", intel: "x64"

  version "2.31.5"
  sha256 arm:   "a6b627f5a6f637130e533881be3b1d744e70570df5ff2431ee6ddc5a98f949b6",
         intel: "3d68e842a32f1c3b640f02b7279e271eae10e3769bb5183491af4b15b65c7cad"

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
