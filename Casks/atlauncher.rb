cask "atlauncher" do
  version "3.4.8.1"
  sha256 "880fdabc6a87af82aeb548f6db3e1328e6d9de19a06a7fe8b774e773b7f00495"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
