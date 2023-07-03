cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.0"
  sha256 arm:   "9eb5ded53bc570b9d6aed60e1541ea16eb8fc1620f468e6a365e026d246ab40b",
         intel: "b71961fab922435c7cabf81a77a290a4bf88a168d0ea8a2cc7293e9f845437a9"

  url "https://dbeaver.com/downloads-ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg"
  name "DBeaver Ultimate Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-ultimate/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ue-version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
