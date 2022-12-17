cask "dbeaverlite" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.0"
  sha256 arm:   "699581de35f6ae2626f6f6a9c9b2b2ca3a4e6d7e9db4df0a9b577d67e23dd747",
         intel: "05a0919bc7fd45e90a433d563874f99fb25e90fe5e13c849af17ac48dc17d167"

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
