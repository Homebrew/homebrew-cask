cask "solar2d" do
  version "2022.3666"
  sha256 "171e920557961610ab396687798982944266bc5398f6a79473cc868d9a8136ba"

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
