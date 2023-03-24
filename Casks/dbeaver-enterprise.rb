cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.0"
  sha256 arm:   "77607f651df927f642af76c6596f9ea5a4c667c3d1379a2d815c667494850d4e",
         intel: "5fb7d8232113c702300f0b9c5969eadf3fa1d664ff492d76f35246b28904ab45"

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
