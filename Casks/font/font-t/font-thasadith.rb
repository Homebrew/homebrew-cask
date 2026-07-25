cask "font-thasadith" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/thasadith"
  name "Thasadith"
  homepage "https://fonts.google.com/specimen/Thasadith"

  font "Thasadith-Bold.ttf"
  font "Thasadith-BoldItalic.ttf"
  font "Thasadith-Italic.ttf"
  font "Thasadith-Regular.ttf"

  # No zap stanza required
end
