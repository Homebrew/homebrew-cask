cask "font-audiowide" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/audiowide/Audiowide-Regular.ttf"
  name "Audiowide"
  homepage "https://fonts.google.com/specimen/Audiowide"

  font "Audiowide-Regular.ttf"

  # No zap stanza required
end
