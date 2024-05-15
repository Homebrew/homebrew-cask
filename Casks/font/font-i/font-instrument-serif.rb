cask "font-instrument-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/instrumentserif"
  name "Instrument Serif"
  homepage "https://fonts.google.com/specimen/Instrument+Serif"

  font "InstrumentSerif-Italic.ttf"
  font "InstrumentSerif-Regular.ttf"

  # No zap stanza required
end
