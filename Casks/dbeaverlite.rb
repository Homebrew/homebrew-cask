cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1.0"
  sha256 arm:   "7239e1974e67f767a46ceb914f26b8c9b731cff7891c49edf3b36c17d8c7d7fa",
         intel: "1b77bf5d5b45a800e6c83166973f27c2a2acc1048c3ad8648407bd79ae600bf1"

  url "https://dbeaver.com/downloads-lite/#{version}/dbeaver-le-#{version}-macos-#{arch}.dmg"
  name "DBeaver Lite Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-lite/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-le-version.xml"
    regex(%r{<number[^>]*?>v?(\d+(?:\.\d+)+)</number>}i)
  end

  app "DBeaverLite.app"

  uninstall signal: ["TERM", "com.dbeaver.product.lite"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.lite.plist",
    "~/Library/Saved Application State/com.dbeaver.product.lite.savedState",
  ]
end
