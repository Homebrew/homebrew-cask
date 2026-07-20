cask "font-lalezar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lalezar/Lalezar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lalezar"
  homepage "https://fonts.google.com/specimen/Lalezar"

  font "Lalezar-Regular.ttf"

  # No zap stanza required
end
