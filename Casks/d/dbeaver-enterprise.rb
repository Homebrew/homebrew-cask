cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.2.0"
  sha256 arm:   "a94350123bd6bb8419ac7ed4c15474e00bffddeccb9ab3778d87df12e5846e06",
         intel: "3c2b40a1ad76b62e8551c691b13d8491268b3fe8fc47f39d633f0871559aa63e"

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
