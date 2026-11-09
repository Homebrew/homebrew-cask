cask "font-bjcree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/bjcree"
  name "BJCree"
  homepage "https://fonts.google.com/specimen/BJCree"

  font "BJCree-Bold.ttf"
  font "BJCree-Medium.ttf"
  font "BJCree-Regular.ttf"
  font "BJCree-SemiBold.ttf"

  zap :not_required
end
