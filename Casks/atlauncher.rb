cask "atlauncher" do
  version "3.4.7.4"
  sha256 "885f9279a366420020fae640ee38fdf8b5c21dd706211ee70ec93c12bfea50a6"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
