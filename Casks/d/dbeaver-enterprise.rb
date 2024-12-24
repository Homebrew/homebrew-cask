cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3.0"
  sha256 arm:   "400f62ff9a5ba0b797bc93500a3b97c679c290638b6e8673e973d34299909a80",
         intel: "932b1d85cbe634cad79aa9ceb055b144814c5542df37966420dae39f3e6ea8ca"

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
