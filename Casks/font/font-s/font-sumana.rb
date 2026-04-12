cask "font-sumana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sumana"
  name "Sumana"
  homepage "https://fonts.google.com/specimen/Sumana"

  font "Sumana-Bold.ttf"
  font "Sumana-Regular.ttf"

  # No zap stanza required
end
