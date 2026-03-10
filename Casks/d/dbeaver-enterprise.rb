cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.0"
  sha256 arm:   "f1b5aef7d32ed1536871dd4270455dff3a665249db2f1fbbeba5cd75b3c27969",
         intel: "58e6c4285bb2e3e702410bdc996d41ecb497a24c668b77bd54f80fc653aafdd4"

  url "https://downloads.dbeaver.net/enterprise/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/enterprise/"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ee-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: ">= :big_sur"

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
