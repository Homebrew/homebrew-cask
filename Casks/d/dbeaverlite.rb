cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.0"
  sha256 arm:   "8cb52d83f785b34aa68a4c20a606b90b9129e754256a0b153adee1fd580942c3",
         intel: "ef1ea85a978a6b54d517ff63a5ae8cdd53be26b643050126f290baa934a1fe0c"

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

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
