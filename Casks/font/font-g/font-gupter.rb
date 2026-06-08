cask "font-gupter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gupter"
  name "Gupter"
  homepage "https://fonts.google.com/specimen/Gupter"

  font "Gupter-Bold.ttf"
  font "Gupter-Medium.ttf"
  font "Gupter-Regular.ttf"

  # No zap stanza required
end
