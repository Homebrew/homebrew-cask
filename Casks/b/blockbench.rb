cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "0fffcfe1b7b2230c7033fc9ac64ffad9507b69c7fa59ba6e28168c9000cccc85",
         intel: "7ee42e2763acfb945697032467a0651be3203dee173f7eba8c89f6e93ef8f67f"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
