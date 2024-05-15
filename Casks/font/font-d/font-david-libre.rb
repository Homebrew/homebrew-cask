cask "font-david-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/davidlibre"
  name "David Libre"
  desc "Led by meir sadan, a type designer based in tel aviv, israel"
  homepage "https://fonts.google.com/specimen/David+Libre"

  font "DavidLibre-Bold.ttf"
  font "DavidLibre-Medium.ttf"
  font "DavidLibre-Regular.ttf"

  # No zap stanza required
end
