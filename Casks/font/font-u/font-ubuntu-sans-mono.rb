cask "font-ubuntu-sans-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ufl/ubuntusansmono"
  name "Ubuntu Sans Mono"
  homepage "https://fonts.google.com/specimen/Ubuntu+Sans+Mono"

  font "UbuntuSansMono-Italic[wght].ttf"
  font "UbuntuSansMono[wght].ttf"

  # No zap stanza required
end
