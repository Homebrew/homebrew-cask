cask "captain" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "10.0.2"

  if Hardware::CPU.intel?
    sha256 "32301cc0375862312401b9783beb7cc74c4d386e231a0202d3c4f238ad5066e4"
  else
    sha256 "0ee461a6232bd1fc61def3361359274702fe785723c8dea76dd11e43c63b33a9"
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
