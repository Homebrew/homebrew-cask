cask "font-reenie-beanie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reeniebeanie/ReenieBeanie.ttf",
      verified: "github.com/google/fonts/"
  name "Reenie Beanie"
  homepage "https://fonts.google.com/specimen/Reenie+Beanie"

  font "ReenieBeanie.ttf"

  # No zap stanza required
end
