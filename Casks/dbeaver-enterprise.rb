cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2.0"
  sha256 arm:   "14aaba4d86adc6d58c3f297032ab00c0c5ca21ff5edec7d377b2c76eb7b6a2f7",
         intel: "7a7b10533e918c8874c0c1619d5855e053bb6a716efa7c2bed7c0cbef3947729"

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
