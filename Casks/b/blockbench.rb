cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.10.4"
  sha256 arm:   "281227fa7b454307d75a530bd68781c8ff7aaf3cf5dca8db2886025f04319abe",
         intel: "4904607e39774b8b9370e8e7729f0a07d78070deeff7846e4bde9c1ae4c42519"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
