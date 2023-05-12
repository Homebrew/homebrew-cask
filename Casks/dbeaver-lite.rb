cask "dbeaver-lite" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.0"
  sha256 arm:   "e90befb2d9eb754ec0c498ece247e2f7342a4daa181eb395b82a4f6c25d5fe22",
         intel: "4e596fad5017b4bcc35a7d065c7d5a04b2498e915d6f48e125c15494c7bdace4"

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
