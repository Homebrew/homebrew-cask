cask "font-yusei-magic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yuseimagic/YuseiMagic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yusei Magic"
  desc "Highly visible font based on handwritten letters"
  homepage "https://fonts.google.com/specimen/Yusei+Magic"

  font "YuseiMagic-Regular.ttf"

  # No zap stanza required
end
