cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0.0"
  sha256 arm:   "75ce4e6784dfe76c82f2bf9b6bcd0700189861d455d4e7142e09e5781235898d",
         intel: "a642f60bb88c95c6d7709145457b27160605edae764e3c42d87e5e4f63a8516d"

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
