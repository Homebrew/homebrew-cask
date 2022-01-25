cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.1"

  if Hardware::CPU.intel?
    sha256 "200920e19d7b1fa1fb6c9a9661908406563924ce6d5ff0606281e6b2eb2a07d3"
  else
    sha256 "8e2aa17f00ba49d3d73f5054fcb2f48e4bfdb927a08b2b4b6c389e76dbe6c8b8"
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

  zap trash: "~/Library/Application Support/Blockbench"
end
