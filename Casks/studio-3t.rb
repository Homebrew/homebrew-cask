cask "studio-3t" do
  version "2020.8.0"
  sha256 "3d7c9b1bd8beebcfc34ba7c93cdf64b49619e6afe48617bb735ae9b8101ee75d"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
