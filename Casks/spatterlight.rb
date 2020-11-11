cask "spatterlight" do
  version "0.5.5"
  sha256 "0893a6cc4f2403334df53c8e01588db57aec08296b03202b31424ee0af3100a7"

  # github.com/angstsmurf/spatterlight/ was verified as official when first introduced to the cask
  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight_Catalina.zip"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
