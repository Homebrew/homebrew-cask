cask "font-playball" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playball/Playball-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playball"
  homepage "https://fonts.google.com/specimen/Playball"

  font "Playball-Regular.ttf"

  # No zap stanza required
end
