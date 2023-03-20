cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.0"
  sha256 arm:   "22ec818e0d803c7ad75094be288564f38f5c4bfb5fdea3ae3722bba6f82fcc0d",
         intel: "7227c31b69fa98cfbf4cb1592b966e4b4978aea57d0d50541541aa1a710505d3"

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
