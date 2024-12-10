cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3.0"
  sha256 arm:   "d2c6054157cf02a4394fecb7a3eee74b417d55e051be907b70bc88983cbf144c",
         intel: "963d74f10d33d0b92fe0073b4d9d3c5f20122f987198790e9f29404ae933a871"

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
