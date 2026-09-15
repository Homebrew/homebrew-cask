cask "font-sedan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/sedan"
  name "Sedan"
  homepage "https://fonts.google.com/specimen/Sedan"

  font "Sedan-Italic.ttf"
  font "Sedan-Regular.ttf"

  # No zap stanza required
end
