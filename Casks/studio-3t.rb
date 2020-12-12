cask "studio-3t" do
  version "2020.10.0"
  sha256 "14e0c1a341ff93eb91733233dc9a693342f668f63e786febf686b9f135711cbc"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
