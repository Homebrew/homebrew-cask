cask "font-miranda-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/mirandasans"
  name "Miranda Sans"
  homepage "https://github.com/maxthunberg/miranda-sans"

  font "MirandaSans-Italic[wght].ttf"
  font "MirandaSans[wght].ttf"

  # No zap stanza required
end
