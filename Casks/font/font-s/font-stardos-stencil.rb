cask "font-stardos-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/stardosstencil"
  name "Stardos Stencil"
  homepage "https://fonts.google.com/specimen/Stardos+Stencil"

  font "StardosStencil-Bold.ttf"
  font "StardosStencil-Regular.ttf"

  # No zap stanza required
end
