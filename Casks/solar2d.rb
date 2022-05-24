cask "solar2d" do
  version "2022.3673"
  sha256 "05ced962b7b3748deed3bdf76666acddbc281605a4ef7cda61dea45d7a39c1ad"

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
