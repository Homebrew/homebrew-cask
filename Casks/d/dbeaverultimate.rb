cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0.0"
  sha256 arm:   "1d7b2d8130f2220b8152666944d0abd690497a06fb176f3bfac2d73baf56ef61",
         intel: "a65e9fbbbc830d263b5e557d03d9e2b6be699402696f86922d9ad0474c3fe01a"

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

  depends_on macos: ">= :big_sur"

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
