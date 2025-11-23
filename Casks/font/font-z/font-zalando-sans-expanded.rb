cask "font-zalando-sans-expanded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zalandosansexpanded"
  name "Zalando Sans Expanded"
  homepage "https://fonts.google.com/specimen/Zalando+Sans+Expanded"

  font "ZalandoSansExpanded-Italic[wght].ttf"
  font "ZalandoSansExpanded[wght].ttf"

  # No zap stanza required
end
