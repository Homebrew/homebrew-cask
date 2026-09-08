cask "font-arapey" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/arapey"
  name "Arapey"
  homepage "https://fonts.google.com/specimen/Arapey"

  font "Arapey-Italic.ttf"
  font "Arapey-Regular.ttf"

  # No zap stanza required
end
