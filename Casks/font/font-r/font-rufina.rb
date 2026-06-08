cask "font-rufina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rufina"
  name "Rufina"
  homepage "https://fonts.google.com/specimen/Rufina"

  font "Rufina-Bold.ttf"
  font "Rufina-Regular.ttf"

  # No zap stanza required
end
