cask "font-share" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/share"
  name "Share"
  homepage "https://fonts.google.com/specimen/Share"

  font "Share-Bold.ttf"
  font "Share-BoldItalic.ttf"
  font "Share-Italic.ttf"
  font "Share-Regular.ttf"

  # No zap stanza required
end
