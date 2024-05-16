cask "font-vampiro-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vampiroone/VampiroOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vampiro One"
  homepage "https://fonts.google.com/specimen/Vampiro+One"

  font "VampiroOne-Regular.ttf"

  # No zap stanza required
end
