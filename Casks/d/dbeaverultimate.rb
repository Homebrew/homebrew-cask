cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.0"
  sha256 arm:   "b46b0d04a2d6ddd62f413b66fb2c8b1f95bc369bf16ef70fbe74a0b5d5a6bf2e",
         intel: "ef5c84d452b25197d8b9794cbac8b349c90e59f508cb9789d0062e78225714dc"

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
