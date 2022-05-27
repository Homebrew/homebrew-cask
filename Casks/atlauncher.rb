cask "atlauncher" do
  version "3.4.15.1"
  sha256 "eb0b926afe221ddeec5c85c35a8d8e8913df87702677d7fabebcf4b93cb9ec67"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
