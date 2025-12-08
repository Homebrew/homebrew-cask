cask "dbeaver-enterprise" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.3.0"
  sha256 arm:   "fde54b4b1c4014adec517f066a8d780012f6e582a9892314b84c58c01b9f65f5",
         intel: "f545e430afbf05bd116d882f9a2f73d5eb94f972aa1c495858e8fbd2c30b878a"

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

  depends_on macos: ">= :big_sur"

  app "DBeaverEE.app"

  uninstall signal: ["TERM", "com.dbeaver.product.enterprise"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.enterprise.plist",
    "~/Library/Saved Application State/com.dbeaver.product.enterprise.savedState",
  ]
end
