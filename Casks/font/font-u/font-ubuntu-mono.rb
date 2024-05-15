cask "font-ubuntu-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ufl/ubuntumono"
  name "Ubuntu Mono"
  homepage "https://fonts.google.com/specimen/Ubuntu+Mono"

  font "UbuntuMono-Bold.ttf"
  font "UbuntuMono-BoldItalic.ttf"
  font "UbuntuMono-Italic.ttf"
  font "UbuntuMono-Regular.ttf"

  # No zap stanza required
end
