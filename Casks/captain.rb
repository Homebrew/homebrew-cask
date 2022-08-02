cask "captain" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "10.0.3"

  if Hardware::CPU.intel?
    sha256 "32209eaa21e8917470d37456388395d79aefac911bceed044011284fb222d186"
  else
    sha256 "a0a380f4d38d7330bfea534ed8ecc44ebf48971843549017aa5551bd659fb121"
  end

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
