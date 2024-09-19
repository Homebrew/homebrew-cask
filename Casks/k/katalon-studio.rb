cask "katalon-studio" do
  arch arm: "%20Arm64"
  app_suffix = on_arch_conditional arm: " Arm64"

  version "9.7.2"
  sha256 arm:   "6cb76ddbd4b0fe54b316a4d11c2cb9d674b3d2588dc56819a5511ca8895ebc92",
         intel: "79034f88e871fb5fed525a9c8df577916609545f2f62cb806823184a6f5aa9df"

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
