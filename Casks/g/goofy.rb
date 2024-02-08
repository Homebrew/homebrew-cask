cask "goofy" do
  version "3.5.4"
  sha256 "a41bd37f7ba1f0cd88cd5241ffcd22ea9087320b9cfa525298565aea9fba121b"

  url "https://github.com/danielbuechele/goofy/releases/download/v#{version}/Goofy-#{version}.dmg",
      verified: "github.com/danielbuechele/goofy/"
  name "Goofy"
  desc "Desktop client for Facebook Messenger"
  homepage "https://www.goofyapp.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Goofy.app"

  zap trash: [
    "~/Library/Application Support/goofy-core",
    "~/Library/Caches/cc.buechele.Goofy",
    "~/Library/Caches/cc.buechele.Goofy.ShipIt",
    "~/Library/Preferences/cc.buechele.Goofy.helper.plist",
    "~/Library/Preferences/cc.buechele.Goofy.plist",
    "~/Library/Saved Application State/cc.buechele.Goofy.savedState",
  ]
end
