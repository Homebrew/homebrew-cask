cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.0"
  sha256 arm:   "de30d1ea1049934db78d51ba18c534dab736618e14d3c2313e9b8a9380a0e8ad",
         intel: "9303cc9c7285cbe972251cdd8aa1c368a644d56d45bbba4425f55d7ed434a849"

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
