cask "font-chenla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chenla/Chenla.ttf",
      verified: "github.com/google/fonts/"
  name "Chenla"
  homepage "https://fonts.google.com/specimen/Chenla"

  font "Chenla.ttf"

  # No zap stanza required
end
