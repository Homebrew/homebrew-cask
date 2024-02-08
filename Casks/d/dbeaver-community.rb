cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.4"
  sha256 arm:   "5438e6e94c70e683858554f51643660c0ade756ef9aa0a8de272aa8995d751b0",
         intel: "14a6560bac1732a517b61dfdb32d1b1599416fe69d27dbecb967c27bd067f0a2"

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
