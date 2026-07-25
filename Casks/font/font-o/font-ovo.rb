cask "font-ovo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ovo/Ovo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ovo"
  homepage "https://fonts.google.com/specimen/Ovo"

  font "Ovo-Regular.ttf"

  # No zap stanza required
end
