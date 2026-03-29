cask "font-bj-cree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/bjcree"
  name "BJ Cree"
  homepage "https://github.com/silnrsi/font-bjcree"

  font "BJCree-Bold.ttf"
  font "BJCree-Medium.ttf"
  font "BJCree-Regular.ttf"
  font "BJCree-SemiBold.ttf"

  # No zap stanza required
end
