cask "atlauncher" do
  version "3.4.37.2"
  sha256 "93d7b3f100e4a82b5afc3011f8954d3b7de6bc1aff5d7afc870a62e880729fb5"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"

  zap trash: [
    "~/Library/Preferences/com.atlauncher.App.plist",
    "~/Library/Saved Application State/com.atlauncher.App.savedState",
  ]
end
