cask "font-cinzel-decorative" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cinzeldecorative"
  name "Cinzel Decorative"
  homepage "https://fonts.google.com/specimen/Cinzel+Decorative"

  font "CinzelDecorative-Black.ttf"
  font "CinzelDecorative-Bold.ttf"
  font "CinzelDecorative-Regular.ttf"

  # No zap stanza required
end
