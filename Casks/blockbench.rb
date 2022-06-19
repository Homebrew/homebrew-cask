cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.2.5"

  if Hardware::CPU.intel?
    sha256 "c87ba65698ae40be303d173ac7157517d0992b56618ca68ae29eecc6dbb7b263"
  else
    sha256 "a76f30fafcf95bfb58418a575d3817b32db4ab60b51e6e1f19bec7f78d723009"
  end

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
