cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.2.3"
  sha256 arm:   "301ec470cc20f048ce5182ccb0f53143471f9fd479510cac12762fa6ddff04d1",
         intel: "b02db5ef720af4dc3d9a0423e7f7f421d4078691327c69816f0d3595a36a9c41"

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
