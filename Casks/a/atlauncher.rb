cask "atlauncher" do
  version "3.4.41.1"
  sha256 "f608b25e6b034782323455b0fc8c5d686a8256ae6574c6c197cf8f402cfa4580"

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
