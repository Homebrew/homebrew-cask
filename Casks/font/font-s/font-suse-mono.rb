cask "font-suse-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/susemono"
  name "SUSE Mono"
  homepage "https://fonts.google.com/specimen/SUSE+Mono"

  font "SUSEMono-Italic[wght].ttf"
  font "SUSEMono[wght].ttf"

  # No zap stanza required
end
