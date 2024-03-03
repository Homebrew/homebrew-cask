cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "27cf2a216d526d59640c1fc2f427274c41d57e40c3a01ffaab7045999030476c",
         intel: "91c7be736748c8063e6878b3dd19177c2a9e7b6a3a9fa11e4810a90d415609d9"

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
