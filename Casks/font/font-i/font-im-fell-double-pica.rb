cask "font-im-fell-double-pica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/imfelldoublepica"
  name "IM Fell Double Pica"
  homepage "https://fonts.google.com/specimen/IM+Fell+Double+Pica"

  font "IMFELLDoublePica-Italic.ttf"
  font "IMFELLDoublePica-Regular.ttf"

  # No zap stanza required
end
