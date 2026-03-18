cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.0"
  sha256 arm:   "0d633329c98a84c339b0e94b84cea77e3de953659354547bb333ed4321e4b449",
         intel: "f869113b515286c644ab3ba9df5e5e643cdbe8f8684490f7ab04d9a226ae778c"

  url "https://downloads.dbeaver.net/ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/ultimate/"
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
