cask "font-b612-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/b612mono"
  name "B612 Mono"
  homepage "https://fonts.google.com/specimen/B612+Mono"

  font "B612Mono-Bold.ttf"
  font "B612Mono-BoldItalic.ttf"
  font "B612Mono-Italic.ttf"
  font "B612Mono-Regular.ttf"

  # No zap stanza required
end
