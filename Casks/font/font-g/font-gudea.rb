cask "font-gudea" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gudea"
  name "Gudea"
  homepage "https://fonts.google.com/specimen/Gudea"

  font "Gudea-Bold.ttf"
  font "Gudea-Italic.ttf"
  font "Gudea-Regular.ttf"

  # No zap stanza required
end
