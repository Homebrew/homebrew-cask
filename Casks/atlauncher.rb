cask "atlauncher" do
  version "3.4.18.1"
  sha256 "0f9a002a4d89741416015b94290996b1c64cd27c0d0b0cfcd0b98d725231740a"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
