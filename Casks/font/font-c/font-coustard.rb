cask "font-coustard" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/coustard"
  name "Coustard"
  homepage "https://fonts.google.com/specimen/Coustard"

  font "Coustard-Black.ttf"
  font "Coustard-Regular.ttf"

  # No zap stanza required
end
