cask "font-rem" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rem"
  name "REM"
  homepage "https://fonts.google.com/specimen/REM"

  font "REM-Italic[wght].ttf"
  font "REM[wght].ttf"

  # No zap stanza required
end
