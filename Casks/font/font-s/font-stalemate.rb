cask "font-stalemate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stalemate/Stalemate-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stalemate"
  homepage "https://fonts.google.com/specimen/Stalemate"

  font "Stalemate-Regular.ttf"

  # No zap stanza required
end
