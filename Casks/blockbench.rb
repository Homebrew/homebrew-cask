cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.4"

  if Hardware::CPU.intel?
    sha256 "b1ee2d8681b1a0cd975d72d924b72d36c0560c4a0774fbdca218f8b0c6a70475"
  else
    sha256 "b14e5b529d5f2c7fbfb1c2651d7d5d2f8e8106eedc573d3d7987a2d80d1838bc"
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
