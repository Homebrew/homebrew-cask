cask "font-red-hat-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redhatmono"
  name "Red Hat Mono"
  homepage "https://fonts.google.com/specimen/Red+Hat+Mono"

  font "RedHatMono-Italic[wght].ttf"
  font "RedHatMono[wght].ttf"

  # No zap stanza required
end
