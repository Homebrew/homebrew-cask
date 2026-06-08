cask "font-jacques-francois" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquesfrancois/JacquesFrancois-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacques Francois"
  homepage "https://fonts.google.com/specimen/Jacques+Francois"

  font "JacquesFrancois-Regular.ttf"

  # No zap stanza required
end
