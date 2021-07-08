cask "spatterlight" do
  version "0.8.2"
  sha256 "f9f063745a7f48d6b2be319586ac2babd9e1d95e16a150abe52e9b179fda192c"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
