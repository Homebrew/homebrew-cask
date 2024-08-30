cask "katalon-studio" do
  arch arm: "%20Arm64"
  app_suffix = on_arch_conditional arm: " Arm64"

  version "9.7.1"
  sha256 arm:   "2a82d2b915901ee0d57d5cbac188ff8ea8310889ce9cd18ecc4d1336fcf24638",
         intel: "b733184ffed474a0526bc9271990a4b00bfced14fa52565ff9fa522a538502e2"

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
