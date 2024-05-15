cask "font-radley" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radley"
  name "Radley"
  homepage "https://fonts.google.com/specimen/Radley"

  font "Radley-Italic.ttf"
  font "Radley-Regular.ttf"

  # No zap stanza required
end
