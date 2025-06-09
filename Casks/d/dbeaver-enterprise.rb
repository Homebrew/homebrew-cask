cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.1.0"
  sha256 arm:   "f187881d66c9f7de46b1195ee9fb9aa5e0f63c71ede1908432a2d4863c10898c",
         intel: "354daaa9b40d80f43f2a2f2bf697470f2cf239d72e418a958c713ddc5f759633"

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
