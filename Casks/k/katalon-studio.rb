cask "katalon-studio" do
  arch arm: "%20Arm64"
  app_suffix = on_arch_conditional arm: " Arm64"

  version "9.5.0"
  sha256 arm:   "48565b5a023ca2046b3887a7b72930601e6a8340518515db1b2821c9cd5f9fd5",
         intel: "5cc804d1c27c74ebf9359519d94fc0deaa605dd822afe436127be4ce3b26998d"

  url "https://download.katalon.com/#{version}/Katalon%20Studio#{arch}.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://katalon.com/download"

  livecheck do
    url :homepage
    regex(%r{href=.*/(\d+(?:\.\d+)+)/Katalon}i)
  end

  app "Katalon Studio#{app_suffix}.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
