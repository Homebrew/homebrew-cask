cask "font-newsreader" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/newsreader"
  name "Newsreader"
  desc "Original typeface primarily intended for continuous on-screen reading"
  homepage "https://fonts.google.com/specimen/Newsreader"

  font "Newsreader-Italic[opsz,wght].ttf"
  font "Newsreader[opsz,wght].ttf"

  # No zap stanza required
end
