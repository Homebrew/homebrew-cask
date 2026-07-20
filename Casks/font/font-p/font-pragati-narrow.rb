cask "font-pragati-narrow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/pragatinarrow"
  name "Pragati Narrow"
  homepage "https://fonts.google.com/specimen/Pragati+Narrow"

  font "PragatiNarrow-Bold.ttf"
  font "PragatiNarrow-Regular.ttf"

  # No zap stanza required
end
