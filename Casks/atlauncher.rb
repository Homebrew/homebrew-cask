cask "atlauncher" do
  version "3.4.26.0"
  sha256 "ec812ab5d2450c350ab748450e6834002f0d0a860c9d293d6f63e50c5e5abfa6"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
