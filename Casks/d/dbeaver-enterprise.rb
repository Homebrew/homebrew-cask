cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2.0"
  sha256 arm:   "776e223a5a7ce4248a97cbdb861e661017b13383b3934c29cb3c7748b3b49b13",
         intel: "5f426bb0cb134b1eb69f830c4cc7a54ad3b34e4efd59ce21101c8993aba35e35"

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
