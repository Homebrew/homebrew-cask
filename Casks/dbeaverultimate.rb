cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.0"
  sha256 arm:   "03e13c828f4359f85df821fd301ce482e6e8d97f6c36b0b9772585140f65c614",
         intel: "41c5b9e1c992a79a7fc8f57202eb30fe9e0376f44eaa60f77fc9421643787dde"

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
