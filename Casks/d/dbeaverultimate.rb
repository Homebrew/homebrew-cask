cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "a1b9aaafaba5acf659b48944780029d3aa06e351a1e8b6ef94e5e054e29661e3",
         intel: "014d579962180982b02b334769cae619fd43863d000c390edace87a2c125ab63"

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
