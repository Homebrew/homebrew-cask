cask "font-codystar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/codystar"
  name "Codystar"
  homepage "https://fonts.google.com/specimen/Codystar"

  font "Codystar-Light.ttf"
  font "Codystar-Regular.ttf"

  # No zap stanza required
end
