cask "atlauncher" do
  version "3.4.22.1"
  sha256 "03f71a68c565f02b42ad2c88c0f17ed4e3c76229db805563f59e848d7b553b95"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
