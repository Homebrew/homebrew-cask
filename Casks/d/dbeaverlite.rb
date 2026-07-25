cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "ddad856da3e39ef3ad33286fb27ff3782ff7e8892103d128d70494aa56f813cf",
         intel: "09642c7fa3753e8d38fd97163470765c79525f8c1a5d6d3a22052c620f447bfa"

  url "https://downloads.dbeaver.net/lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/lite/"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: :big_sur

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
