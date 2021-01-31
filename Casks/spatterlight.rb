cask "spatterlight" do
  version "0.7.4"
  sha256 "07f81dfb20b48142f8fa7bac7aabb005b4c99a63a03c7ffbe04e4ad41687b7be"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
