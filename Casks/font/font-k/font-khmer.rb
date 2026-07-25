cask "font-khmer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/khmer/Khmer.ttf",
      verified: "github.com/google/fonts/"
  name "Khmer"
  homepage "https://fonts.google.com/specimen/Khmer"

  font "Khmer.ttf"

  # No zap stanza required
end
