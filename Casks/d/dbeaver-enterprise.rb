cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "586e31e357b17e8049e0463a7235eec0325b1205d957ad6340c575a2fe96923c",
         intel: "56c8684fd6a2b4cd318d7f3ef33d9b5c9f5a21b94053597b8b27e4b967ff99f2"

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
