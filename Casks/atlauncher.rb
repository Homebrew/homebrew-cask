cask "atlauncher" do
  version "3.4.6.4"
  sha256 "9888d861a9e0da09cf36d7dd496c5804a37e5c35eec191c6de96240744ce8fa3"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
