cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3.0"
  sha256 arm:   "17b48da553ff340aac32d23418440316dda9d3cb7a9e87800b385c0cc788855a",
         intel: "6d69d662d6b59ca11056317470a9a7da1d40b763b66fdf7a271bd69479dbc7e4"

  url "https://dbeaver.com/downloads-lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: ">= :big_sur"

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
