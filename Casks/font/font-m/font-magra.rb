cask "font-magra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/magra"
  name "Magra"
  homepage "https://fonts.google.com/specimen/Magra"

  font "Magra-Bold.ttf"
  font "Magra-Regular.ttf"

  # No zap stanza required
end
