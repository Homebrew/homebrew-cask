cask "atlauncher" do
  version "3.4.9.1"
  sha256 "f3c07f93a04b83c7941123acb16e5d9e6c2aed0d64aa616eaffc12dfd12fb7ca"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
