cask "font-source-sans-3" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sourcesans3"
  name "Source Sans 3"
  homepage "https://fonts.google.com/specimen/Source+Sans+3"

  font "SourceSans3-Italic[wght].ttf"
  font "SourceSans3[wght].ttf"

  # No zap stanza required
end
