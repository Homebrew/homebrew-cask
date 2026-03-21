cask "font-blinker" do
  version "1.015"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/blinker"
  name "Blinker"
  homepage "https://fonts.google.com/specimen/Blinker"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Blinker",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Blinker-Black.ttf"
  font "Blinker-Bold.ttf"
  font "Blinker-ExtraBold.ttf"
  font "Blinker-ExtraLight.ttf"
  font "Blinker-Light.ttf"
  font "Blinker-Regular.ttf"
  font "Blinker-SemiBold.ttf"
  font "Blinker-Thin.ttf"

  # No zap stanza required
end
