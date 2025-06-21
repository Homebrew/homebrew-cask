cask "font-badeen-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/badeendisplay/BadeenDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Badeen Display"
  homepage "https://fonts.google.com/specimen/Badeen+Display"

  font "BadeenDisplay-Regular.ttf"

  # No zap stanza required
end
