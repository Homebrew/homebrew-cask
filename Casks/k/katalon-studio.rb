cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.2.2"
  sha256 arm:   "8417a3b2a643854e83428a9f38d3766aac87eed2e986d5191a0880b16b009762",
         intel: "10b3b58c49158098f22a72d01fcad01a1b488d55e0f177c561d9fc036328a9c1"

  url "https://download.katalon.com/free/#{version}/release/Katalon%20Studio#{arch}.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://katalon.com/download"

  livecheck do
    url "https://github.com/katalon-studio/katalon-studio/"
    regex(/^free[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Katalon Studio.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
