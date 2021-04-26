cask "spatterlight" do
  version "0.7.9"
  sha256 "325acd50337f78c88de74ba0b4d5fe100ae0ed705c2cd39266761063eade0505"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
