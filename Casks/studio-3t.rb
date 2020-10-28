cask "studio-3t" do
  version "2020.9.2"
  sha256 "4a62f593de642570538edf7b291777333b5933e8a1f0bdb0d394dabba45fc9cb"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
