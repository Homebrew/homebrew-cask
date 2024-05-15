cask "font-karla-tamil-inclined" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karlatamilinclined"
  name "Karla Tamil Inclined"
  homepage "https://fonts.google.com/specimen/Karla"

  font "KarlaTamilInclined-Bold.ttf"
  font "KarlaTamilInclined-Regular.ttf"

  # No zap stanza required
end
