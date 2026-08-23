cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "9821764efce6be58c9bc87e31730e6943d07bdb9fb1d2ccb358138b5709e0acf",
         intel: "6a99e0f9f7ad7a4b6f1f40eaaab1614a011953a449b3a7470435617f09dc150a"

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
