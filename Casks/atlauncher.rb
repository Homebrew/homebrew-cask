cask "atlauncher" do
  version "3.4.19.3"
  sha256 "a9e55a6fa22ce925e4a79345495ff546befc8b6a7e182ccad69e27ab680cacca"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
