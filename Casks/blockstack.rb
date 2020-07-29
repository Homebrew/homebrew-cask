cask "blockstack" do
  version "0.37.0"
  sha256 "c51a900432b7b7c2885ccd285027ff7c9656f87e934d54bb48dbfbae43ccdf32"

  # github.com/blockstack/blockstack-browser/ was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast "https://github.com/blockstack/blockstack-browser/releases.atom"
  name "Blockstack"
  homepage "https://blockstack.org/"

  depends_on macos: ">= :sierra"

  app "Blockstack.app"
end
