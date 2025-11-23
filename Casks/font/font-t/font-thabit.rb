cask "font-thabit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/thabit"
  name "Thabit"
  homepage "https://fonts.google.com/earlyaccess"

  font "Thabit-Bold.ttf"
  font "Thabit-BoldOblique.ttf"
  font "Thabit-Oblique.ttf"
  font "Thabit.ttf"

  # No zap stanza required
end
