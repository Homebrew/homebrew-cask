cask "lemonlime" do
  version "0.3.4.3"
  sha256 "2dab5fdaf47d2e0aca888d17c8045a73e87d7226a90e9f49bb16f41b03d78f2a"

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
