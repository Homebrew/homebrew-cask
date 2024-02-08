cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.0"
  sha256 arm:   "8efb6e10787b8b955efc2665943dbc4f2285f019f5e7b527fa67ffbbe7491fe5",
         intel: "d3d27c4ecc3d7730d7e1890bb13d361fc548c6b026d0d26b6132b6d8af883523"

  url "https://dbeaver.com/downloads-ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg"
  name "DBeaver Ultimate Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-ultimate/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ue-version.xml"
    strategy :xml do |xml|
      xml.get_elements("version/number").first&.text&.strip
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
