cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.5"

  if Hardware::CPU.intel?
    sha256 "2e20958fd6738ca5e628edf2068d731a6487ebe2a10325c7e7cba120029f873d"
  else
    sha256 "0102dcba3ffef753bac823dd7fd113035dc4f4f9ec0fd8598809bed0bd9827d0"
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
