cask "font-zilla-slab-highlight" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zillaslabhighlight"
  name "Zilla Slab Highlight"
  homepage "https://fonts.google.com/specimen/Zilla+Slab+Highlight"

  font "ZillaSlabHighlight-Bold.ttf"
  font "ZillaSlabHighlight-Regular.ttf"

  # No zap stanza required
end
