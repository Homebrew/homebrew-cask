cask "atlauncher" do
  version "3.4.20.4"
  sha256 "f41a14b75fbdb0e5888f902e602bc19e2d2f6505ec24a2e9d6449ef94f79deed"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
