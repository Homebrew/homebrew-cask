cask "font-mate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mate"
  name "Mate"
  homepage "https://fonts.google.com/specimen/Mate"

  font "Mate-Italic.ttf"
  font "Mate-Regular.ttf"

  # No zap stanza required
end
