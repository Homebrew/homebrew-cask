cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.0"
  sha256 arm:   "4b77c1910136130fcad32c0fee866b550b543292a6c12f2589d48fe036ddaebc",
         intel: "4a8fe6ee30d3f89aca5a39a32c613da41f1606c0d61ff7c3d42a202bea72e8da"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ee-version.xml"
    strategy :xml do |xml|
      xml.get_elements("version/number").first&.text&.strip
    end
  end

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
