cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0.0"
  sha256 arm:   "4d473cfbad2a214a909a0dc9edef8e77ec5dd98d257bf1d41ecb3ab0c0108969",
         intel: "d50f62ce37a779a3eb081b0344f895afd803ab12f4b7b3cc7055175dd5d991b5"

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
