cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3.0"
  sha256 arm:   "486bf2e782de0fbd4b229dcb355e03afdbd87f9c29394e0dd43ff15f6bdc6487",
         intel: "1dd6bdba043494de7184fd09980de96009ae6bb64ce2d038d3db7fa4e28e0fbc"

  url "https://dbeaver.com/downloads-ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg"
  name "DBeaver Ultimate Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-ultimate/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ue-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
