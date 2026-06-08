cask "font-flamenco" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/flamenco"
  name "Flamenco"
  homepage "https://fonts.google.com/specimen/Flamenco"

  font "Flamenco-Light.ttf"
  font "Flamenco-Regular.ttf"

  # No zap stanza required
end
