cask "font-dotgothic16" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dotgothic16/DotGothic16-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "DotGothic16"
  homepage "https://fonts.google.com/specimen/DotGothic16"

  font "DotGothic16-Regular.ttf"

  # No zap stanza required
end
