cask "font-jacques-francois-shadow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquesfrancoisshadow/JacquesFrancoisShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacques Francois Shadow"
  homepage "https://fonts.google.com/specimen/Jacques+Francois+Shadow"

  font "JacquesFrancoisShadow-Regular.ttf"

  # No zap stanza required
end
