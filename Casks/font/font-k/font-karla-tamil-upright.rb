cask "font-karla-tamil-upright" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karlatamilupright"
  name "Karla Tamil Upright"
  homepage "https://fonts.google.com/specimen/Karla"

  font "KarlaTamilUpright-Bold.ttf"
  font "KarlaTamilUpright-Regular.ttf"

  # No zap stanza required
end
