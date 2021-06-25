cask "atlauncher" do
  version "3.4.4.6"
  sha256 "7f53d26790b93366d28918ce5e6c8f9f87608fa79da22816b4f02e40f12dd0bf"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
