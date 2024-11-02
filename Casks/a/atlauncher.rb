cask "atlauncher" do
  version "3.4.37.4"
  sha256 "5bfbf0c67fefe8810cac0eee57f0dca767948bdec8fa16e74f26fb9ee7122508"

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
