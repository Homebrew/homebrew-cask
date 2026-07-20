cask "font-vollkorn-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vollkornsc"
  name "Vollkorn SC"
  homepage "https://fonts.google.com/specimen/Vollkorn+SC"

  font "VollkornSC-Black.ttf"
  font "VollkornSC-Bold.ttf"
  font "VollkornSC-Regular.ttf"
  font "VollkornSC-SemiBold.ttf"

  # No zap stanza required
end
