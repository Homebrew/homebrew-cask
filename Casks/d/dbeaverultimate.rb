cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "20aacb0db1f818989cb4cb4a4e982c88a3ff6756ce4e0753d25c40920d8b76bb",
         intel: "a1e00d518ae1aae36999b1c2f8c33067e2cf1e5452da5121acbd9b626d85552d"

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

  depends_on macos: :big_sur

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
