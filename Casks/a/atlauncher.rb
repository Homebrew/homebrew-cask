cask "atlauncher" do
  version "3.4.40.4"
  sha256 "69bd36692eea02f4139126cc0ca51d73a3babc9d90fcd5f6d9e58936b0fe554a"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "ATLauncher.app"

  zap trash: [
    "~/Library/Preferences/com.atlauncher.App.plist",
    "~/Library/Saved Application State/com.atlauncher.App.savedState",
  ]
end
