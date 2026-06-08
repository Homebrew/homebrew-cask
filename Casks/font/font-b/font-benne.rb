cask "font-benne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/benne/Benne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Benne"
  homepage "https://fonts.google.com/specimen/Benne"

  font "Benne-Regular.ttf"

  # No zap stanza required
end
