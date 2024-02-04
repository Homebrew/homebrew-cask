cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3.4"
  sha256 arm:   "04d18114b556af2858a018327bc83288a3b60873b25729f9b28c8accc421a4b5",
         intel: "2b2ed5b37eacf7a2200e615475af686191dbdd797ae02514bb67eb890c72d8b1"

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
