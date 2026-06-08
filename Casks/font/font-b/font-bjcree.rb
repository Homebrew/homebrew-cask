cask "font-bjcree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bjcree"
  name "BJCree"
  homepage "https://fonts.google.com/specimen/BJCree"

  font "BJCree-Bold.ttf"
  font "BJCree-Medium.ttf"
  font "BJCree-Regular.ttf"
  font "BJCree-SemiBold.ttf"

  # No zap stanza required
end
