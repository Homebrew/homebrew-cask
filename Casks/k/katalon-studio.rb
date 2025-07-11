cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.2.4"
  sha256 arm:   "b198e3e9e8bcdcbf4093b56d6df85a857223100b82385f7cecdc5c81b4e54fe6",
         intel: "cd8028aacf3157f3994311e009ba19849ef5f27059d9fcec26a0e6bdcb0fd6cb"

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
