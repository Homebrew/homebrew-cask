cask "font-almendra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/almendra"
  name "Almendra"
  homepage "https://fonts.google.com/specimen/Almendra"

  font "Almendra-Bold.ttf"
  font "Almendra-BoldItalic.ttf"
  font "Almendra-Italic.ttf"
  font "Almendra-Regular.ttf"

  # No zap stanza required
end
