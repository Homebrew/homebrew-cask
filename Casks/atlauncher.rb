cask "atlauncher" do
  version "3.4.24.1"
  sha256 "ae1287b8893d5cf4e32de27aa032a8b3ed2688f0b819719ec81282bb42ec05a6"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
