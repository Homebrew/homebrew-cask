cask "font-instrument-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/instrumentsans"
  name "Instrument Sans"
  homepage "https://fonts.google.com/specimen/Instrument+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Instrument Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InstrumentSans-Italic[wdth,wght].ttf"
  font "InstrumentSans[wdth,wght].ttf"

  # No zap stanza required
end
