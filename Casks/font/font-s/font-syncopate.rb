cask "font-syncopate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/syncopate"
  name "Syncopate"
  desc "Unicase design where the traditional lowercase x-height has been abandoned and a single uppercase height rules the design of all of the alpha and numeric glyphs"
  homepage "https://fonts.google.com/specimen/Syncopate"

  font "Syncopate-Bold.ttf"
  font "Syncopate-Regular.ttf"

  # No zap stanza required
end
