cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.0"
  sha256 arm:   "7f6732da67885b5441920dd2818a0656f8f670c0845b1f269e379c08b92c4fc8",
         intel: "34c25d3da39b69b9417916815a3ef812adecdc8b648ef2f7173c8be321233da4"

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
