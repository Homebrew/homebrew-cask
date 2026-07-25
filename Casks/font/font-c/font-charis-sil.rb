cask "font-charis-sil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/charissil"
  name "Charis SIL"
  homepage "https://fonts.google.com/specimen/Charis+SIL"

  font "CharisSIL-Bold.ttf"
  font "CharisSIL-BoldItalic.ttf"
  font "CharisSIL-Italic.ttf"
  font "CharisSIL-Regular.ttf"

  # No zap stanza required
end
