cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.10.1"
  sha256 arm:   "2a670d640dc6427132ede47ff3965a99db31db84449633ce73bd341b49583f4c",
         intel: "27192e0d02de03dc81d42681030682b9f4756726251652926711cb883a09209d"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
