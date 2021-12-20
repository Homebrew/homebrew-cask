cask "atlauncher" do
  version "3.4.10.3"
  sha256 "a48a27fd25ceb0f813d63d3f7a66a7f333530af4c7cc8766eae7a040c18e4686"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
