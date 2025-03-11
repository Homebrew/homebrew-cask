cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0.0"
  sha256 arm:   "92bf7f8c572bc8e09ed8dfeceda9a2c7049fc06166a161817f21286a7c14a39b",
         intel: "0892a75cfc3804bbabcb78c502b988e54a7ead1e0aa69219a4c65a72f5ba22da"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ee-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
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
