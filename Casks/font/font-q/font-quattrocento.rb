cask "font-quattrocento" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/quattrocento"
  name "Quattrocento"
  homepage "https://fonts.google.com/specimen/Quattrocento"

  font "Quattrocento-Bold.ttf"
  font "Quattrocento-Regular.ttf"

  # No zap stanza required
end
