cask "solar2d" do
  version "2021.3646"
  sha256 "768ae432bfb7a3ff2f7fa481ec7c98f486c98026960419c6f034622caa8912e4"

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
