cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.3.0"
  sha256 arm:   "f8e3d20787016bae7486ccf40f8a402213e76384dcccd90515212ded1de4b6a1",
         intel: "a1a0a97334b6017602424f067a9d37bcb35da7beeb248b21c6f7e42c56cf911c"

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
