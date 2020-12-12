cask "iconizer" do
  version "2020.11.0"
  sha256 "abaffdea473f4d3cd7d763fcb3846fbb752b87949e6ef7d273a95b6f5c5c1e06"

  # github.com/raphaelhanneken/iconizer/ was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast "https://github.com/raphaelhanneken/iconizer/releases.atom"
  name "Iconizer"
  homepage "https://raphaelhanneken.github.io/iconizer/"

  auto_updates true

  app "Iconizer.app"
end
