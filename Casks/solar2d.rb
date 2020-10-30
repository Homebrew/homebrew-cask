cask "solar2d" do
  version "2020.3623"
  sha256 "74912541858a86cccfa054e6adf7ad5be4ec118161bdeaea6c37be953830010d"

  # github.com/coronalabs/corona was verified as official when first introduced to the cask
  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg"
  appcast "https://github.com/coronalabs/corona/releases.atom"
  name "Solar2D"
  desc "Lua based game engine"
  homepage "https://solar2d.com/"

  suite "Corona-#{version.minor}"
end
