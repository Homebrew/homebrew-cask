cask "atlauncher" do
  version "3.4.41.2"
  sha256 "55600fe80d5033e0783ce4286fe85b760112a93ae0a70c5258715c71ca026755"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "ATLauncher.app"

  zap trash: [
    "~/Library/Preferences/com.atlauncher.App.plist",
    "~/Library/Saved Application State/com.atlauncher.App.savedState",
  ]
end
