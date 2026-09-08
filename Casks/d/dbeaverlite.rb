cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.2.0"
  sha256 arm:   "4dd92df1f5670bd2c6d10278a080f7cd91beded5179a69ab82ba9de94d3b9459",
         intel: "a299a98c8f25c9b1c943b003a88c64a6c94a0c67e713280f65191f22f72eb892"

  url "https://downloads.dbeaver.net/lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
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
