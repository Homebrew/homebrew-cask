cask "solar2d" do
  version "2021.3661"
  sha256 "a5974b9f3576305123ccadaa2bd0fe4875429bee7c5e56b910669f23b4a54271"

  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg",
      verified: "github.com/coronalabs/corona/"
  name "Solar2D"
  desc "Lua-based game engine"
  homepage "https://solar2d.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Solar2D[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  suite "Corona-#{version.minor}"
end
