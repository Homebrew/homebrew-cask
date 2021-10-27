cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.1"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  if Hardware::CPU.intel?
    sha256 "562e5a56281a61b8d9533d541f06e89d55fc85659a67d744673b81f0dfd65da5"
  else
    sha256 "2acd9a3bb54474e97cc3fc6a64bd2e6824f7a3397c1b4b31bf9fddfd27f486a4"
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
