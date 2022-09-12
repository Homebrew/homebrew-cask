cask "lemonlime" do
  version "0.3.4.2"
  sha256 "3425784ed04131da082597e4113d98f7ea70e4a4ae4f3d73b1edeb643e3ed957"

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
