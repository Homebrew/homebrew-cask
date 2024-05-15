cask "font-overlock" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/overlock"
  name "Overlock"
  homepage "https://fonts.google.com/specimen/Overlock"

  font "Overlock-Black.ttf"
  font "Overlock-BlackItalic.ttf"
  font "Overlock-Bold.ttf"
  font "Overlock-BoldItalic.ttf"
  font "Overlock-Italic.ttf"
  font "Overlock-Regular.ttf"

  # No zap stanza required
end
