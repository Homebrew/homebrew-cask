cask "studio-3t" do
  version "2020.9.3"
  sha256 "ba29666289a10badeb8640e15da0e4edab31aab28667f9bd4269c4fa93bb32e3"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
