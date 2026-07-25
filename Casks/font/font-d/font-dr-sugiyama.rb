cask "font-dr-sugiyama" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/drsugiyama/DrSugiyama-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dr Sugiyama"
  homepage "https://fonts.google.com/specimen/Dr+Sugiyama"

  font "DrSugiyama-Regular.ttf"

  # No zap stanza required
end
