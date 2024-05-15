cask "font-anuphan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anuphan/Anuphan%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anuphan"
  desc "Not a modification of ibm plex sans thai"
  homepage "https://fonts.google.com/specimen/Anuphan"

  font "Anuphan[wght].ttf"

  # No zap stanza required
end
