cask "font-jaro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jaro/Jaro%5Bopsz%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Jaro"
  homepage "https://fonts.google.com/specimen/Jaro"

  font "Jaro[opsz].ttf"

  # No zap stanza required
end
