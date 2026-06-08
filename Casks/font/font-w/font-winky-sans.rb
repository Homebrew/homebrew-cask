cask "font-winky-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/winkysans"
  name "Winky Sans"
  homepage "https://fonts.google.com/specimen/Winky+Sans"

  font "WinkySans-Italic[wght].ttf"
  font "WinkySans[wght].ttf"

  # No zap stanza required
end
