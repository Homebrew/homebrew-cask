cask "font-instrument-serif" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/instrumentserif"
  name "Instrument Serif"
  homepage "https://fonts.google.com/specimen/Instrument+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Instrument Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InstrumentSerif-Italic.ttf"
  font "InstrumentSerif-Regular.ttf"

  # No zap stanza required
end
