cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.3.0"
  sha256 arm:   "649ee7a821d797ec8b14de9ff5076ad39bf3a65c7de79df81e6afafed45e2bc8",
         intel: "991cec4e953abba1f0b1c2074ef58e534835c68c623fcdade92d497eb9d069f8"

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
