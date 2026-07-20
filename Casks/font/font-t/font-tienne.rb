cask "font-tienne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tienne"
  name "Tienne"
  homepage "https://fonts.google.com/specimen/Tienne"

  font "Tienne-Black.ttf"
  font "Tienne-Bold.ttf"
  font "Tienne-Regular.ttf"

  # No zap stanza required
end
