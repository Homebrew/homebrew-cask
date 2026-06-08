cask "font-darker-grotesque" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/darkergrotesque/DarkerGrotesque%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Darker Grotesque"
  homepage "https://fonts.google.com/specimen/Darker+Grotesque"

  font "DarkerGrotesque[wght].ttf"

  # No zap stanza required
end
