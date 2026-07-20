cask "font-italiana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/italiana/Italiana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Italiana"
  homepage "https://fonts.google.com/specimen/Italiana"

  font "Italiana-Regular.ttf"

  # No zap stanza required
end
