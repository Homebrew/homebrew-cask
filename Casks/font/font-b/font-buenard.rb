cask "font-buenard" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/buenard"
  name "Buenard"
  homepage "https://fonts.google.com/specimen/Buenard"

  font "Buenard-Bold.ttf"
  font "Buenard-Regular.ttf"

  # No zap stanza required
end
