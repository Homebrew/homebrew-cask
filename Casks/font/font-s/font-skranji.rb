cask "font-skranji" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/skranji"
  name "Skranji"
  homepage "https://fonts.google.com/specimen/Skranji"

  font "Skranji-Bold.ttf"
  font "Skranji-Regular.ttf"

  # No zap stanza required
end
