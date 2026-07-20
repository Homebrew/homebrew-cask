cask "font-shizuru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shizuru/Shizuru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shizuru"
  homepage "https://fonts.google.com/specimen/Shizuru"

  font "Shizuru-Regular.ttf"

  # No zap stanza required
end
