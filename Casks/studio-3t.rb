cask "studio-3t" do
  version "2020.7.1"
  sha256 "a9ff0fe8988110d0c28405bbd4adb0392f44a6ae2db172fc4f3e8c2de08a8da2"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
