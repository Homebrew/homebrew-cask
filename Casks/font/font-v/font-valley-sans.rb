cask "font-valley-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/valleysans"
  name "Valley Sans"
  homepage "https://fonts.google.com/specimen/Valley+Sans"

  font "ValleySans-Italic[wght].ttf"
  font "ValleySans[wght].ttf"

  # No zap stanza required
end
