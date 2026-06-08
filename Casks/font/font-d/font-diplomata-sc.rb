cask "font-diplomata-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/diplomatasc/DiplomataSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Diplomata SC"
  homepage "https://fonts.google.com/specimen/Diplomata+SC"

  font "DiplomataSC-Regular.ttf"

  # No zap stanza required
end
