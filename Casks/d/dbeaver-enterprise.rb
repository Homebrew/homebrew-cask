cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1.0"
  sha256 arm:   "a3089e0fb22163f855c1930cc56559d0ecff568d865b13d996638d6b2cbec73d",
         intel: "59280699ba94dd0e136e482f847e3e0532ef260007dd37581291f71e31c489d1"

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
