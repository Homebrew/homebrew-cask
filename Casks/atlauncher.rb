cask "atlauncher" do
  version "3.4.6.0"
  sha256 "e008e6ff61bfe0c2a29bdad91f2451c670374285ece0c00f0193409d3d289086"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
