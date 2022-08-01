cask "lemonlime" do
  version "0.3.4"
  sha256 "e752b5b67e54c141145f9d74a47da5ac1cfa8c23da4018247a2c1dee9dac9d53"

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
