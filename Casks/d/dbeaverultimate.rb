cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "ac134703e8cf541e8489d61367f9c0d29bd8fa048a1f18239978fe7355957786",
         intel: "1401d140bd9e8c58d9e370d235a1861db4baa7b13494a545a94192a39dd237b9"

  url "https://downloads.dbeaver.net/ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg"
  name "DBeaver Ultimate Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-ultimate/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ue-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: :big_sur

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
