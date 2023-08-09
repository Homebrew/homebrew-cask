cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.0"
  sha256 arm:   "02cb3568f79afa436781283ee4c86644f0460a32304988ac5aea9643648a5503",
         intel: "8694a8148694c4759e13a5bd400fd9b1933eceb624a56fd4ccd27ec5f5ea236c"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
