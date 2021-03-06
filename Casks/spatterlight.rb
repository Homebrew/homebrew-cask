cask "spatterlight" do
  version "0.7.6"
  sha256 "832de7b1ee0455a331c2854bcfe9f2a7411678331593dda912329345980ba32a"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
