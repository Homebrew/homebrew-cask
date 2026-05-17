cask "dbeaver-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.5"
  sha256 arm:   "17ad33ae0c76712e870a64b39d46a94a09ae2312c8d4c6bc587ae66b00f31149",
         intel: "88cc87654347cd2a5cd83aca4ac76e331d7785463549d1d04c0351dd88f6e7a0"

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
  depends_on macos: :big_sur

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
