cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.1.1"
  sha256 arm:   "7fed12e4d6d19d7997d8f36dedf893eed075e0d175b01145a18c579bda804a4e",
         intel: "500e681f0d7637aaa00238777c42c127ed957f853073824f09ad6e9084aa4bd1"

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
