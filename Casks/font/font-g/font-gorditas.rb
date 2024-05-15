cask "font-gorditas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gorditas"
  name "Gorditas"
  homepage "https://fonts.google.com/specimen/Gorditas"

  font "Gorditas-Bold.ttf"
  font "Gorditas-Regular.ttf"

  # No zap stanza required
end
