cask "atlauncher" do
  version "3.4.4.3"
  sha256 "650bf251d212e392eeec44712265976bd855f6b87795b14ed76e0490c31c56fc"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
