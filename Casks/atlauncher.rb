cask "atlauncher" do
  version "3.4.13.6"
  sha256 "b22316042b027f3717f13cf21a49c232fb3f5082cb08d5b69ea52ea519b53b8e"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
