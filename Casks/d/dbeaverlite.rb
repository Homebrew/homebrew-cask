cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.0"
  sha256 arm:   "e174eb443fa22342be7f574bbe0197059594ed8cd2d81794091f26f6d00566b2",
         intel: "20116aed5920e9f3ddaaa01f56bae1ab3429ae3a13d5d2d4da405859f80c8413"

  url "https://dbeaver.com/downloads-lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
