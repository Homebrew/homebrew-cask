cask "katalon-studio" do
  version "9.3.2"
  sha256 "e0f6e76dc483ac08cece373af0e0716e6a0467dade31e8711051ce8ceb24590f"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://katalon.com/download"

  livecheck do
    url :homepage
    regex(%r{href=.*\/(\d+(?:\.\d+)+)\/Katalon}i)
  end

  app "Katalon Studio.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
