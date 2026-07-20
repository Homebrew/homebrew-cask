cask "font-bokor" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bokor/Bokor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bokor"
  homepage "https://fonts.google.com/specimen/Bokor"

  font "Bokor-Regular.ttf"

  # No zap stanza required
end
