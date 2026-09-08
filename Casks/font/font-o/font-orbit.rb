cask "font-orbit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orbit/Orbit-Regular.ttf"
  name "Orbit"
  homepage "https://fonts.google.com/specimen/Orbit"

  font "Orbit-Regular.ttf"

  # No zap stanza required
end
