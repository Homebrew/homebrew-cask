cask "font-kavoon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kavoon/Kavoon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kavoon"
  homepage "https://fonts.google.com/specimen/Kavoon"

  font "Kavoon-Regular.ttf"

  # No zap stanza required
end
