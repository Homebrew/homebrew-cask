cask "font-saira-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/sairastencil"
  name "Saira Stencil"
  homepage "https://github.com/Omnibus-Type/Saira_Stencil"

  font "SairaStencil-Italic[wdth,wght].ttf"
  font "SairaStencil[wdth,wght].ttf"

  # No zap stanza required
end
