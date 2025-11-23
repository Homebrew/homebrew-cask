cask "font-benchnine" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/benchnine"
  name "BenchNine"
  homepage "https://fonts.google.com/specimen/BenchNine"

  font "BenchNine-Bold.ttf"
  font "BenchNine-Light.ttf"
  font "BenchNine-Regular.ttf"

  # No zap stanza required
end
