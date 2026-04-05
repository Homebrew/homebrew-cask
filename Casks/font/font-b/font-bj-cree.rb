cask "font-bj-cree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bjcree"
  name "BJ Cree"
  homepage "https://fonts.google.com/specimen/BJ+Cree"

  font "BJCree-Bold.ttf"
  font "BJCree-Medium.ttf"
  font "BJCree-Regular.ttf"
  font "BJCree-SemiBold.ttf"

  # No zap stanza required
end
