cask "katalon-studio" do
  arch arm: "%20Arm64"
  app_suffix = on_arch_conditional arm: " Arm64"

  version "9.3.2"
  sha256 arm:   "f80d385a4ba8b77d0fcadee4576b651766849e70d54cbd11ad30ad222be17e78",
         intel: "e0f6e76dc483ac08cece373af0e0716e6a0467dade31e8711051ce8ceb24590f"

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
