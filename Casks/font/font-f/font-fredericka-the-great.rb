cask "font-fredericka-the-great" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/frederickathegreat/FrederickatheGreat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fredericka the Great"
  homepage "https://fonts.google.com/specimen/Fredericka+the+Great"

  font "FrederickatheGreat-Regular.ttf"

  # No zap stanza required
end
