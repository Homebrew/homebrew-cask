cask "font-play" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/play"
  name "Play"
  homepage "https://fonts.google.com/specimen/Play"

  font "Play-Bold.ttf"
  font "Play-Regular.ttf"

  # No zap stanza required
end
