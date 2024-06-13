cask "font-silkscreen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/silkscreen"
  name "Silkscreen"
  homepage "https://fonts.google.com/specimen/Silkscreen"

  font "Silkscreen-Bold.ttf"
  font "Silkscreen-Regular.ttf"

  # No zap stanza required
end
