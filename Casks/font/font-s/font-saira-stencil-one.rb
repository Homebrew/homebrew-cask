cask "font-saira-stencil-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sairastencilone/SairaStencilOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Saira Stencil One"
  homepage "https://fonts.google.com/specimen/Saira+Stencil+One"

  font "SairaStencilOne-Regular.ttf"

  # No zap stanza required
end
