cask "font-suse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/suse"
  name "SUSE"
  homepage "https://fonts.google.com/specimen/SUSE"

  font "SUSE-Italic[wght].ttf"
  font "SUSE[wght].ttf"

  # No zap stanza required
end
