cask "atlauncher" do
  version "3.4.40.2"
  sha256 "76be98752c855e83280e26a7298ad4d956d71f1188b8cdb6cf2ea7932bf40629"

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
