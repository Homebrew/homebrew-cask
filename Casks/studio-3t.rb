cask "studio-3t" do
  version "2020.9.1"
  sha256 "c17c937f85f019db54737b82c80926125bb8d506216a6282007d8778626436c0"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
