cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3.0"
  sha256 arm:   "b3a1322d795d4519d57108098c43b3ebe20ceb212d35f22bfe4d3a293d32a311",
         intel: "572f9a4776bcb3eba5280f989143a96a5f89f42c62ea94edb84e2ec38af3d857"

  url "https://dbeaver.com/downloads-lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
