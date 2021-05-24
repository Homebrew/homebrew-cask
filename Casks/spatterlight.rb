cask "spatterlight" do
  version "0.8.0"
  sha256 "2d475ab50e91a92241eab025b5fc07f6b0676def009d7f666e47f5e09723c71a"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip",
      verified: "github.com/angstsmurf/spatterlight/"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
