cask "font-amatic-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amaticsc"
  name "Amatic SC"
  homepage "https://fonts.google.com/specimen/Amatic+SC"

  font "AmaticSC-Bold.ttf"
  font "AmaticSC-Regular.ttf"

  # No zap stanza required
end
