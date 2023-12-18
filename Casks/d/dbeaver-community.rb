cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.0"
  sha256 arm:   "732d4f46a0b124bddb3f1bc6c516b6f68cad33d7561d7fa79033120d8343d938",
         intel: "f46a465d3b591e5b7ef1bad745911dea9463f10b3aab80e24bc0b68680af0cb9"

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
