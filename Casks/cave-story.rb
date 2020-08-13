cask "cave-story" do
  version "0.1.0"
  sha256 "1d1920e8108ef64616c08524c4a4fad9808329d075428999e48b87eaccc32ce2"

  # nakiwo.com/ was verified as official when first introduced to the cask
  url "https://www.nakiwo.com/downloads/doukutsu#{version.dots_to_underscores}.dmg"
  appcast "https://www.nakiwo.com/software.html"
  name "Pixel Cave Story"
  name "Doukutsu"
  name "洞窟物語"
  homepage "https://www.cavestory.org/"

  depends_on macos: ">= :catalina"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Doukutsu.app", target: "Cave Story.app"
end
