cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.4.3"
  sha256 arm:   "5e4e9e7d49aa6924c755dbc0525b1fda248655b79dcc2ae547f25ea4e8709281",
         intel: "342800afc86116696e8a908b36df2e6e1700dee002029cae013c71f1684291c5"

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
