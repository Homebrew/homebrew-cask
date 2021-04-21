cask "studio-3t" do
  version "2020.10.1"
  sha256 "b88b91834566418611c93920cfb5d9737664c374f825ff37331ada1d34f593da"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
