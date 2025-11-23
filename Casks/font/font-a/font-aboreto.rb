cask "font-aboreto" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aboreto/Aboreto-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aboreto"
  homepage "https://fonts.google.com/specimen/Aboreto"

  font "Aboreto-Regular.ttf"

  # No zap stanza required
end
