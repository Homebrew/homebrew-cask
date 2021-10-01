cask "atlauncher" do
  version "3.4.7.3"
  sha256 "63980cc7d35ee26462853edd17ac67b19b5807b889a078d2d457509b704f0d69"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
