cask "font-inspiration" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inspiration/Inspiration-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Inspiration"
  homepage "https://fonts.google.com/specimen/Inspiration"

  font "Inspiration-Regular.ttf"

  # No zap stanza required
end
