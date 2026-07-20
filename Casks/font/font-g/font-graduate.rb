cask "font-graduate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/graduate/Graduate-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Graduate"
  homepage "https://fonts.google.com/specimen/Graduate"

  font "Graduate-Regular.ttf"

  # No zap stanza required
end
