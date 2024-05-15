cask "font-fresca" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fresca/Fresca-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fresca"
  homepage "https://fonts.google.com/specimen/Fresca"

  font "Fresca-Regular.ttf"

  # No zap stanza required
end
