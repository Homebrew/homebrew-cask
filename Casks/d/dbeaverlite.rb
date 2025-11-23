cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.2.0"
  sha256 arm:   "cb2f2833abb216cac122c9dd368d1d0002b2dc671a677e02fc940c8ef065258f",
         intel: "c3a40f1242b06222e65aa7d084ffb553b9ccc75af0f41d0ae9faf270d643d745"

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
