cask "font-comic-relief" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/comicrelief"
  name "Comic Relief"
  homepage "https://fonts.google.com/specimen/Comic+Relief"

  font "ComicRelief-Bold.ttf"
  font "ComicRelief-Regular.ttf"

  # No zap stanza required
end
