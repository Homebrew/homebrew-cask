cask "font-albert-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/albertsans"
  name "Albert Sans"
  homepage "https://fonts.google.com/specimen/Albert+Sans"

  font "AlbertSans-Italic[wght].ttf"
  font "AlbertSans[wght].ttf"

  # No zap stanza required
end
