cask "font-slabo-27px" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/slabo27px/Slabo27px-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slabo 27px"
  homepage "https://fonts.google.com/specimen/Slabo+27px"

  font "Slabo27px-Regular.ttf"

  # No zap stanza required
end
