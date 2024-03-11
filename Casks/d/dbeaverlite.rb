cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "efecb11bcedc7d3b171ce751d58a9d8340b27fa41c542cf5c3b22ab55819b141",
         intel: "902e77e4b36b117956bd9c930e3d7f2f1d50a2e4f34641d00f152e9080e6bf66"

  url "https://dbeaver.com/downloads-lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    strategy :xml do |xml|
      xml.get_elements("version/number").first&.text&.strip
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
