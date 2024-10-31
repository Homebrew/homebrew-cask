cask "katalon-studio" do
  arch arm: "%20Arm64"

  version "10.0.0"
  sha256 arm:   "f3c040d8b0fed00714ecb76f436b714069955f21ddbbcbd297d23b6f9d629f49",
         intel: "cf49b715038130e52b3c07bb2939d59adf5627437d1e7b6632ab8065bc1cb1c5"

  url "https://download.katalon.com/free/#{version}/release/Katalon%20Studio#{arch}.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://katalon.com/download"

  livecheck do
    url :homepage
    regex(%r{href=.*/(\d+(?:\.\d+)+)/Katalon}i)
  end

  app "Katalon Studio.app"

  zap trash: [
    "~/.katalon",
    "~/Library/Preferences/com.kms.katalon.product.product.plist",
    "~/Library/Saved Application State/com.kms.katalon.product.product.savedState",
  ]
end
