cask "blockstack" do
  version "0.37.0"
  sha256 "c51a900432b7b7c2885ccd285027ff7c9656f87e934d54bb48dbfbae43ccdf32"

  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg",
      verified: "github.com/blockstack/blockstack-browser/"
  name "Blockstack"
  homepage "https://blockstack.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Blockstack.app"
end
