cask "font-seymour-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/seymourone/SeymourOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Seymour One"
  homepage "https://fonts.google.com/specimen/Seymour+One"

  font "SeymourOne-Regular.ttf"

  # No zap stanza required
end
