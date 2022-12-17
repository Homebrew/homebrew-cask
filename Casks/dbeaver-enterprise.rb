cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.3.0"
  sha256 arm:   "ce209a7e7782aea970f6c3d237743dfd636409e5512cd104fa00751ea87a6651",
         intel: "99c77d9ab717fe6b3b017b3fa037f56393a4683181dab97b0d25d74192946da7"

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
