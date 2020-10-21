cask "solar2d" do
  version "2020.3621"
  sha256 "6c179f454f55f82afe5749561a3c3ec96d3bd9f566b62ac94775f28742fb4aa0"

  # github.com/coronalabs/corona was verified as official when first introduced to the cask
  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg"
  appcast "https://github.com/coronalabs/corona/releases.atom"
  name "Solar2D"
  desc "Lua based game engine"
  homepage "https://solar2d.com/"

  suite "Corona-#{version.minor}"
end
