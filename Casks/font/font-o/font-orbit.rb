cask "font-orbit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orbit/Orbit-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orbit"
  desc "Recommended to use bright writing on a dark background, below 10pt"
  homepage "https://fonts.google.com/specimen/Orbit"

  font "Orbit-Regular.ttf"

  # No zap stanza required
end
