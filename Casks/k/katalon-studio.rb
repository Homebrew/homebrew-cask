cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.3.2"
  sha256 arm:   "bcf33c66a2048578af4c59525fd882c0e412e1ea5e00930bd313704c261fbe62",
         intel: "fe15cb541f4cd2c25d4b867ae0026d19cd8bb07bfd2b4f56dd5071334d9b4b36"

  url "https://download.katalon.com/free/#{version}/release/Katalon%20Studio#{arch}.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://katalon.com/download"

  livecheck do
    url "https://github.com/katalon-studio/katalon-studio/"
    regex(/^free[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Katalon Studio.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
