cask "atlauncher" do
  version "3.4.28.0"
  sha256 "ef8711386e40652ba30c2190d15874789940330b419d4b53e583dcaf23d8750e"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
