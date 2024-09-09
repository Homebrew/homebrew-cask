cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.2.0"
  sha256 arm:   "b9da63fe8252e693193cb5d22f8f0f5f95a9b4fb9bd49874b422fe46f9317bb9",
         intel: "66222f32033dc9832d8819869b3a9cc37c340ea44e50abf2e60d245350be9af2"

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
