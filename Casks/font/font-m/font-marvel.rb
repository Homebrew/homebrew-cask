cask "font-marvel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/marvel"
  name "Marvel"
  homepage "https://fonts.google.com/specimen/Marvel"

  font "Marvel-Bold.ttf"
  font "Marvel-BoldItalic.ttf"
  font "Marvel-Italic.ttf"
  font "Marvel-Regular.ttf"

  # No zap stanza required
end
