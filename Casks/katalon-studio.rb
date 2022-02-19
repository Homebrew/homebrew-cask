cask "katalon-studio" do
  version "8.2.5"
  sha256 "40d5235c0c19987b0c5693c2af48363351ef190b92bb0a83710b496aa3a1d89e"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://www.katalon.com/download/"

  livecheck do
    url "https://github.com/katalon-studio/katalon-studio"
    strategy :github_latest
  end

  app "Katalon Studio.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
