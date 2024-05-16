cask "font-maitree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/maitree"
  name "Maitree"
  homepage "https://fonts.google.com/specimen/Maitree"

  font "Maitree-Bold.ttf"
  font "Maitree-ExtraLight.ttf"
  font "Maitree-Light.ttf"
  font "Maitree-Medium.ttf"
  font "Maitree-Regular.ttf"
  font "Maitree-SemiBold.ttf"

  # No zap stanza required
end
