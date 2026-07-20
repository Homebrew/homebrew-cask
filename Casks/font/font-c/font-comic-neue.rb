cask "font-comic-neue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/comicneue"
  name "Comic Neue"
  homepage "https://fonts.google.com/specimen/Comic+Neue"

  font "ComicNeue-Bold.ttf"
  font "ComicNeue-BoldItalic.ttf"
  font "ComicNeue-Italic.ttf"
  font "ComicNeue-Light.ttf"
  font "ComicNeue-LightItalic.ttf"
  font "ComicNeue-Regular.ttf"

  # No zap stanza required
end
