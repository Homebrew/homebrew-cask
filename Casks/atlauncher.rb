cask "atlauncher" do
  version "3.4.20.1"
  sha256 "7f00504413138b7d4e5ec079b9313ae329b4f47789608e788f8f498a1c6cda0c"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
