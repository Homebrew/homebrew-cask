cask "font-david-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/davidlibre"
  name "David Libre"
  homepage "https://fonts.google.com/specimen/David+Libre"

  font "DavidLibre-Bold.ttf"
  font "DavidLibre-Medium.ttf"
  font "DavidLibre-Regular.ttf"

  # No zap stanza required
end
