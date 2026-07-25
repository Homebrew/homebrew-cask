cask "font-battambang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/battambang"
  name "Battambang"
  homepage "https://fonts.google.com/specimen/Battambang"

  font "Battambang-Black.ttf"
  font "Battambang-Bold.ttf"
  font "Battambang-Light.ttf"
  font "Battambang-Regular.ttf"
  font "Battambang-Thin.ttf"

  # No zap stanza required
end
