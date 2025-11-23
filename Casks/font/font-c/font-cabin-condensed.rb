cask "font-cabin-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabincondensed"
  name "Cabin Condensed"
  homepage "https://fonts.google.com/specimen/Cabin+Condensed"

  font "CabinCondensed-Bold.ttf"
  font "CabinCondensed-Medium.ttf"
  font "CabinCondensed-Regular.ttf"
  font "CabinCondensed-SemiBold.ttf"

  # No zap stanza required
end
