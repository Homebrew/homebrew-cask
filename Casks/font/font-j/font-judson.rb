cask "font-judson" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/judson"
  name "Judson"
  homepage "https://fonts.google.com/specimen/Judson"

  font "Judson-Bold.ttf"
  font "Judson-Italic.ttf"
  font "Judson-Regular.ttf"

  # No zap stanza required
end
