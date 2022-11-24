cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.0"
  sha256 arm:   "a2549652dc7a6353ac2c7c2c14c1ef84c72985e5eabc7df223372066d5c181e1",
         intel: "50eaf8ea6cb10523481b6f3e6f5194994373d2ed0d733802b4f649d59fe40b7f"

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
