cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.2.0"
  sha256 arm:   "9ffbab50b507eecefd1c6616fa1a128501dde4454fab4675eb0f3c563de6ea58",
         intel: "195053a2de1ce84a7b9b53521b6df33bf8fd417bb459f29af23cfe5290f92e50"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos-#{arch}.dmg"
  name "DBeaver Enterprise Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ee-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
