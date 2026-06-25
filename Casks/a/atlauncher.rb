cask "atlauncher" do
  version "3.4.41.0"
  sha256 "a48ecf17a85248f55712b322c357d47bfdb9930c1a3c696bac17fe6733e60a86"

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
