cask "font-trochut" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/trochut"
  name "Trochut"
  homepage "https://fonts.google.com/specimen/Trochut"

  font "Trochut-Bold.ttf"
  font "Trochut-Italic.ttf"
  font "Trochut-Regular.ttf"

  # No zap stanza required
end
