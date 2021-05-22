cask "solar2d" do
  version "2021.3645"
  sha256 "f95f25050624627caa314a05900ff4d0f0c5d1193d4f59a535460df4a23109a7"

  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg",
      verified: "github.com/coronalabs/corona/"
  name "Solar2D"
  desc "Lua based game engine"
  homepage "https://solar2d.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Solar2D[._-]macOS[._-](\d+(?:\.\d+)+)\.dmg}i)
  end

  suite "Corona-#{version.minor}"
end
