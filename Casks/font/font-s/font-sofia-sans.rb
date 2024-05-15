cask "font-sofia-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sofiasans"
  name "Sofia Sans"
  homepage "https://fonts.google.com/specimen/Sofia+Sans"

  font "SofiaSans-Italic[wght].ttf"
  font "SofiaSans[wght].ttf"

  # No zap stanza required
end
