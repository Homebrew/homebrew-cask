cask "font-zilla-slab-highlight" do
  version "1.1"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zillaslabhighlight"
  name "Zilla Slab Highlight"
  homepage "https://fonts.google.com/specimen/Zilla+Slab+Highlight"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zilla Slab Highlight",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZillaSlabHighlight-Bold.ttf"
  font "ZillaSlabHighlight-Regular.ttf"

  # No zap stanza required
end
