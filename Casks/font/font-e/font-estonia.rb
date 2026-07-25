cask "font-estonia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/estonia/Estonia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Estonia"
  homepage "https://fonts.google.com/specimen/Estonia"

  font "Estonia-Regular.ttf"

  # No zap stanza required
end
