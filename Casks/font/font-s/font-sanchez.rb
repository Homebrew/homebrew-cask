cask "font-sanchez" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sanchez"
  name "Sanchez"
  homepage "https://fonts.google.com/specimen/Sanchez"

  font "Sanchez-Italic.ttf"
  font "Sanchez-Regular.ttf"

  # No zap stanza required
end
