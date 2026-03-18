cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.0"
  sha256 arm:   "bad4d7121af716f27594674361663de1b392f7ef7861b900845deef5e134084e",
         intel: "dd8dd9284e9aa84b2964c8ca1e761086ecba89a4bea1c0cddf8796bf06cfc352"

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

  depends_on macos: ">= :big_sur"

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
