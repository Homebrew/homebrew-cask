cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.3.0"
  sha256 arm:   "84c49656d97a651626b117d688a023ad07097b043e0da236d2a890069eb22a06",
         intel: "33b744e11b43026f9243dd1a78279bd17d5aaad9aff98a1668aa18f80f72e9bc"

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
