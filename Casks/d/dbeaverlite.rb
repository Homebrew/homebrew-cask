cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "2c34e55d8078187baa6491765f5f7ce1eb12b0e090ae14dc2a1fa896235e85d8",
         intel: "4829ea2b7b848335926de45330af75e878cc6b052d46d293c5e2ddc50fe16540"

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
