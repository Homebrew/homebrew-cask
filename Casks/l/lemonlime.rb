cask "lemonlime" do
  version "0.3.4.4"
  sha256 "f5c129a4e0e9e22966c9afcba4ead477f58255a65149097b4305599cc54ec8e0"

  url "https://github.com/Project-LemonLime/Project_LemonLime/releases/download/#{version}/lemon-Release.dmg"
  name "lemonlime"
  desc "Tiny judging environment for OI contest based on Lemon + LemonPlus"
  homepage "https://github.com/Project-LemonLime/Project_LemonLime"

  app "lemon.app"

  zap trash: [
    "~/Documents/Project_LemonLime",
    "~/Library/Preferences/com.github.lemonlime.plist",
    "~/Library/Preferences/com.lemonlime.lemon.plist",
    "~/Library/Saved Application State/com.github.lemonlime.savedState",
  ]
end
