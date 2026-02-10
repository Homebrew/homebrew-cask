cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.3.4"
  sha256 arm:   "abf2191d748057b4d1dc48caa31a01d3accb9e112f6fa0394f2c2010af6e2fca",
         intel: "0c9a4c13dc7115295122026e2ed7a621d9dab248a6ed2d703d62e5ac5d1da31a"

  url "https://dbeaver.io/files/#{version}/dbeaver-ce-#{version}-macos-#{arch}.dmg"
  name "DBeaver Community Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.io/"

  livecheck do
    url "https://dbeaver.io/product/dbeaver-ce-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DBeaver.app"
  binary "#{appdir}/DBeaver.app/Contents/MacOS/dbeaver"

  uninstall signal: ["TERM", "org.jkiss.dbeaver.core.product"]

  zap trash: [
    "~/Library/Caches/org.jkiss.dbeaver.core.product",
    "~/Library/DBeaverData",
    "~/Library/HTTPStorages/org.jkiss.dbeaver.core.product",
    "~/Library/Preferences/org.jkiss.dbeaver.core.product.plist",
    "~/Library/Saved Application State/org.jkiss.dbeaver.core.product.savedState",
  ]
end
