cask "atlauncher" do
  version "3.4.17.0"
  sha256 "c31de938537930c1bac50767891bcc3bb41738495dbb3dc58538afd3527a1b84"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
