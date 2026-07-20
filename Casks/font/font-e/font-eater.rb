cask "font-eater" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eater/Eater-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Eater"
  homepage "https://fonts.google.com/specimen/Eater"

  font "Eater-Regular.ttf"

  # No zap stanza required
end
