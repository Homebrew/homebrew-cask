cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.3.1"
  sha256 arm:   "75d4046ae5f9b33a20aa47618a657f5efc4935cf4859a165004a770dd261d22f",
         intel: "ce07fea346d3aadea883eacfa5f613531ef83495aed1939b048091bd97da0729"

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
