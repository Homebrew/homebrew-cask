cask "font-josefin-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/josefinsans"
  name "Josefin Sans"
  homepage "https://fonts.google.com/specimen/Josefin+Sans"

  font "JosefinSans-Italic[wght].ttf"
  font "JosefinSans[wght].ttf"

  # No zap stanza required
end
