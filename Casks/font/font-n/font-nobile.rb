cask "font-nobile" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nobile"
  name "Nobile"
  homepage "https://fonts.google.com/specimen/Nobile"

  font "Nobile-Bold.ttf"
  font "Nobile-BoldItalic.ttf"
  font "Nobile-Italic.ttf"
  font "Nobile-Medium.ttf"
  font "Nobile-MediumItalic.ttf"
  font "Nobile-Regular.ttf"

  # No zap stanza required
end
