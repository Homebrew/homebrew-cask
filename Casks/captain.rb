cask "captain" do
  arch arm: "-arm64"

  version "10.1.0"
  sha256 arm:   "3528a42f3c355e8ebae7a1148106552902fdd251e8436ac628767f60a69aa94e",
         intel: "a9a52030eaf01f40e9f0664474e661f10040f5b03e509bfb10aabfae0e620688"

  url "https://github.com/RickWong/Captain/releases/download/v#{version}/Captain-#{version}#{arch}.dmg",
      verified: "github.com/RickWong/Captain"
  name "captain"
  desc "Manage Docker containers from the menu bar"
  homepage "https://getcaptain.co/"

  app "Captain.app"

  zap trash: [
    "~/Library/Application Support/captain",
    "~/Library/Preferences/com.electron.captain.helper.plist",
    "~/Library/Preferences/com.electron.captain.plist",
    "~/Library/Saved Application State/com.electron.captain.savedState",
  ]
end
