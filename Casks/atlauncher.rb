cask "atlauncher" do
  version "3.4.13.10"
  sha256 "db598e5e3188ad798dc57fbb578419713da86478f848d5033409e44d642b27e7"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
