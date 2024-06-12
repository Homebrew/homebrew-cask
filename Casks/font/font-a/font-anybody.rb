cask "font-anybody" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/anybody"
  name "Anybody"
  desc "10 degrees, noticeable but subtle"
  homepage "https://fonts.google.com/specimen/Anybody"

  font "Anybody-Italic[wdth,wght].ttf"
  font "Anybody[wdth,wght].ttf"

  # No zap stanza required
end
