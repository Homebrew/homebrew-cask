cask "atlauncher" do
  version "3.4.31.1"
  sha256 "98afad594d21af1f995e6a1c2f39e2a69fd0cfee0a710a168ffa4d470e1991d3"

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
