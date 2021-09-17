cask "atlauncher" do
  version "3.4.6.7"
  sha256 "aac446b578037336e54f7860de34b3a59aa77da42f6ac23f3ac2738df9722875"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
