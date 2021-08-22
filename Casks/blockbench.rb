cask "blockbench" do
  version "3.9.3"

  if Hardware::CPU.intel?
    sha256 "e8c0b70e7cf7659186580a6de7dc8aee00167a37f211a6e59cbf693b87178129"

    url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_x64_#{version}.dmg",
        verified: "github.com/JannisX11/blockbench/"
  else
    sha256 "d6bc651b1d4f1f184a8dfc8856ce92a51217f177b206edee9e33113c5ed4a047"

    url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_arm64_#{version}.dmg",
        verified: "github.com/JannisX11/blockbench/"
  end

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
