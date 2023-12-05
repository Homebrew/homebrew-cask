cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.9.1"
  sha256 arm:   "a75e932a495c7fc5ea60218572950f737f9396c1de551f188ebd054c0ccd3022",
         intel: "349a0dfd72b92ef44645ed174e222cf4efe425c505a9c4efa041cb340f7e7eda"

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
