cask "atlauncher" do
  version "3.4.6.2"
  sha256 "13f993ed6ec790009400e9eafdc6388af76726b9614ce3b42c32b71af9f610ab"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
