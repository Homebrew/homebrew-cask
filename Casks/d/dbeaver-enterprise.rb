cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.2.0"
  sha256 arm:   "5d84f78aa23e90ce7c7ad4f7d235b5e950e0b090f67ed8dca7164e865959da97",
         intel: "7d9aef0f7140c030c6c74a08150cdf638f08532699b827e30fe67eec9f1d0d45"

  url "https://downloads.dbeaver.net/enterprise/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
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
