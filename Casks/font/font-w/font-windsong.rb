cask "font-windsong" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/windsong"
  name "WindSong"
  desc "Elongated script with multiple stylistic sets"
  homepage "https://fonts.google.com/specimen/WindSong"

  font "WindSong-Medium.ttf"
  font "WindSong-Regular.ttf"

  # No zap stanza required
end
