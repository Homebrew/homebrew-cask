cask "atlauncher" do
  version "3.4.19.0"
  sha256 "f2bafa5cbb5b7a026ed3fd2c73d6876960acad77ce5b60719c13bf786dd5eb58"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
