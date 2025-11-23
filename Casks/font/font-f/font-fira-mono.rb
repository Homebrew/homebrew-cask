cask "font-fira-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/firamono"
  name "Fira Mono"
  homepage "https://fonts.google.com/specimen/Fira+Mono"

  font "FiraMono-Bold.ttf"
  font "FiraMono-Medium.ttf"
  font "FiraMono-Regular.ttf"

  # No zap stanza required
end
