cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.3"

  if Hardware::CPU.intel?
    sha256 "e1bc36b9e394275eda57b33749f8305524fb675f2d52c8fd27f70b92a97fe641"
  else
    sha256 "cbbc1d63e518c8e344945650192df7161f23dfb91fd655f3ad2efc387407efdd"
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
