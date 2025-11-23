cask "font-ar-one-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aronesans/AROneSans%5BARRR%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "AR One Sans"
  homepage "https://fonts.google.com/specimen/AR+One+Sans"

  font "AROneSans[ARRR,wght].ttf"

  # No zap stanza required
end
