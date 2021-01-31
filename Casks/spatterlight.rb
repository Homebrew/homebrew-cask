cask "spatterlight" do
  version "0.7.5"
  sha256 "a0149b53856759533c50780dc891c4965c82f97a2ad34d246c4d5f24a04e1523"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
