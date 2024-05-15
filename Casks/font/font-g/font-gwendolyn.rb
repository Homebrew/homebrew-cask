cask "font-gwendolyn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gwendolyn"
  name "Gwendolyn"
  homepage "https://fonts.google.com/specimen/Gwendolyn"

  font "Gwendolyn-Bold.ttf"
  font "Gwendolyn-Regular.ttf"

  # No zap stanza required
end
