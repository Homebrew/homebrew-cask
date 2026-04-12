cask "font-sura" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sura"
  name "Sura"
  homepage "https://fonts.google.com/specimen/Sura"

  font "Sura-Bold.ttf"
  font "Sura-Regular.ttf"

  # No zap stanza required
end
