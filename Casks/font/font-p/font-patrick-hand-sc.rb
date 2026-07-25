cask "font-patrick-hand-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/patrickhandsc/PatrickHandSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Patrick Hand SC"
  homepage "https://fonts.google.com/specimen/Patrick+Hand+SC"

  font "PatrickHandSC-Regular.ttf"

  # No zap stanza required
end
