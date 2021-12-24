cask "atlauncher" do
  version "3.4.10.13"
  sha256 "f4e3c852171fe65c118e375c663b3a684ed93538cd650829a15ba3c5bade8296"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
