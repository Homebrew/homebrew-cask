cask "font-gideon-roman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gideonroman/GideonRoman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gideon Roman"
  homepage "https://fonts.google.com/specimen/Gideon+Roman"

  font "GideonRoman-Regular.ttf"

  # No zap stanza required
end
