cask "font-noto-sans-oriya-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansoriyaui"
  name "Noto Sans Oriya UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Oriya"

  font "NotoSansOriyaUI-Black.ttf"
  font "NotoSansOriyaUI-Bold.ttf"
  font "NotoSansOriyaUI-Regular.ttf"
  font "NotoSansOriyaUI-Thin.ttf"

  # No zap stanza required
end
