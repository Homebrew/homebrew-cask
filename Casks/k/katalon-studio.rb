cask "katalon-studio" do
  arch arm: "%20Arm64"
  app_suffix = on_arch_conditional arm: " Arm64"

  version "9.7.0"
  sha256 arm:   "1a9b2cd483c2290a40c8f7abd309fe02014b7797f27ae848cc55243dfa90a08a",
         intel: "1ae9cccfa7a768aea8df298c04458c825e521bea7efad3d9be78d5650b188761"

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
