cask "font-saira-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sairastencil"
  name "Saira Stencil"
  homepage "https://fonts.google.com/specimen/Saira+Stencil"

  font "SairaStencil-Italic[wdth,wght].ttf"
  font "SairaStencil[wdth,wght].ttf"

  # No zap stanza required
end
