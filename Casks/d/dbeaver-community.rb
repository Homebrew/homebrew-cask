cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.3"
  sha256 arm:   "a4ab26d5773d847dc5f114fa683b5d108635d26815b195860d02296782d53773",
         intel: "074b9defa39e004b71e0c5fd53d3e775f17da786c1c8d21711deb0d5baa406e1"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://dbeaver.io/product/dbeaver-ce-version.xml"
    strategy :xml do |xml|
      xml.get_elements("version/number").first&.text&.strip
    end
  end

  auto_updates true

  app "DBeaver.app"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
