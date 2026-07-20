cask "font-monomakh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monomakh/Monomakh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monomakh"
  homepage "https://fonts.google.com/specimen/Monomakh"

  font "Monomakh-Regular.ttf"

  # No zap stanza required
end
