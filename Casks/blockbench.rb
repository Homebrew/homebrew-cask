cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.0"

  if Hardware::CPU.intel?
    sha256 "8c3fef5dec87399165f0d49c47fd507cde85dfff8fdd1573e2b95f9b329afb5c"
  else
    sha256 "b1a9fc6dcd31a514d814e3f746f4ad9bbdb9733e0b591a614ce044706955142b"
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
