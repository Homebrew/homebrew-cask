cask "font-miranda-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mirandasans"
  name "Miranda Sans"
  homepage "https://fonts.google.com/specimen/Miranda+Sans"

  font "MirandaSans-Italic[wght].ttf"
  font "MirandaSans[wght].ttf"

  # No zap stanza required
end
