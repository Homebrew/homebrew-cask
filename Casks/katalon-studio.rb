cask "katalon-studio" do
  version "8.3.0"
  sha256 "5b5c9dccf12fcdf8ed32ab91b41639834e7b4066c27a30cbc94bc762c1582cfd"

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
