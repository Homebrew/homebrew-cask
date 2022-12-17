cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.0"
  sha256 arm:   "f7eeccbad48e5f9c732ab7f5053a783645d61cfe40cf8092474efa16440b0488",
         intel: "69052d4ffaee46931e10c42a7d6ab740f7575ef07d6e6178c2428ba6afe017d9"

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
