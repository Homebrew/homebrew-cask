cask "font-fugaz-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fugazone/FugazOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fugaz One"
  homepage "https://fonts.google.com/specimen/Fugaz+One"

  font "FugazOne-Regular.ttf"

  # No zap stanza required
end
