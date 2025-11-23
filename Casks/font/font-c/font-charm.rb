cask "font-charm" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/charm"
  name "Charm"
  homepage "https://fonts.google.com/specimen/Charm"

  font "Charm-Bold.ttf"
  font "Charm-Regular.ttf"

  # No zap stanza required
end
