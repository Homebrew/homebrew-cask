cask "cuteclips" do
  version "3.1.23"
  sha256 "c2d34440fb84ae0ccf82bad8e5630a4d4d3d021202b7d0a6e91486f6c24a5122"

  url "https://cuteclips3.com/builds/CuteClips#{version.major}-#{version}.dmg"
  appcast "https://cuteclips3.com/"
  name "CuteClips"
  homepage "https://cuteclips3.com/"

  app "CuteClips#{version.major}.app"
end
