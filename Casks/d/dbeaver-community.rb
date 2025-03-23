cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0.1"
  sha256 arm:   "dd39ecc33466de5ede82866db5a38149f3b46866ac0f9e9d3a774c674868c032",
         intel: "6eeebb4f3f1ac0043af629d8dacdf7d20daa3da9f6b512d6226798c7d1c1ded5"

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
