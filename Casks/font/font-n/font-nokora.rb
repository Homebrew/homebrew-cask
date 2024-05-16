cask "font-nokora" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nokora"
  name "Nokora"
  homepage "https://fonts.google.com/specimen/Nokora"

  font "Nokora-Black.ttf"
  font "Nokora-Bold.ttf"
  font "Nokora-Light.ttf"
  font "Nokora-Regular.ttf"
  font "Nokora-Thin.ttf"

  # No zap stanza required
end
