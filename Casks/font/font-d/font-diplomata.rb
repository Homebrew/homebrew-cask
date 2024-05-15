cask "font-diplomata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/diplomata/Diplomata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Diplomata"
  homepage "https://fonts.google.com/specimen/Diplomata"

  font "Diplomata-Regular.ttf"

  # No zap stanza required
end
