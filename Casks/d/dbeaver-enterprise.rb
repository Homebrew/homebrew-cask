cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "b6a9b6c17d136330c357f8f7de49653639304ab57e4f77199f7f96a0e00c9699",
         intel: "cfcd07c7779b27be0425271fcc19e32b8561833a265bda9aa815163c378471ba"

  url "https://downloads.dbeaver.net/enterprise/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/enterprise/"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-enterprise/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ee-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: :big_sur

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
