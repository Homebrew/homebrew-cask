cask "spatterlight" do
  version "0.5.14b"
  sha256 "7fb7b000b88f34e7ee6d6e53ab588dc6f3f58002a5e7c2c47e8ff164b9fb67bb"

  # github.com/angstsmurf/spatterlight/ was verified as official when first introduced to the cask
  url "https://github.com/angstsmurf/spatterlight/releases/download/#{version}/Spatterlight_Catalina.zip"
  appcast "https://github.com/angstsmurf/spatterlight/releases.atom"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "http://ccxvii.net/spatterlight/"

  depends_on macos: ">= :catalina"

  app "Spatterlight.app"
end
