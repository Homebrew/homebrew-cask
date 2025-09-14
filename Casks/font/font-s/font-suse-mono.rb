cask "font-suse-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/susemono"
  name "SUSE Mono"
  homepage "https://github.com/SUSE/suse-font"

  font "SUSEMono-Italic[wght].ttf"
  font "SUSEMono[wght].ttf"

  # No zap stanza required
end
