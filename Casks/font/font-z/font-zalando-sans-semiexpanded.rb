cask "font-zalando-sans-semiexpanded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/zalandosanssemiexpanded"
  name "Zalando Sans SemiExpanded"
  homepage "https://github.com/zalando/sans"

  font "ZalandoSansSemiExpanded-Italic[wght].ttf"
  font "ZalandoSansSemiExpanded[wght].ttf"

  # No zap stanza required
end
