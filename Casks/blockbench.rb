cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.3"

  if Hardware::CPU.intel?
    sha256 "6b33246780c78b3ecff79bdea89471afc18bf6da2e07b9d21d3ffb3401bcb699"
  else
    sha256 "f8b23d2e8ac76719516729ee700e994c51f1926ba0ce0e13480cec2df2eb44d3"
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
