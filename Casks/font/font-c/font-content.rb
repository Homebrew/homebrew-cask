cask "font-content" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/content"
  name "Content"
  homepage "https://fonts.google.com/specimen/Content"

  font "Content-Bold.ttf"
  font "Content-Regular.ttf"

  # No zap stanza required
end
