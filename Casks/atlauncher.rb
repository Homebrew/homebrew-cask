cask "atlauncher" do
  version "3.4.4.4"
  sha256 "89eaec2084333dbc5b81a7ffc9b7c24699ff872cd09a6faa19cac08511141a74"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
