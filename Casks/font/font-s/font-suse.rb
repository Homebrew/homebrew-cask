cask "font-suse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/suse/SUSE%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "SUSE"
  homepage "https://fonts.google.com/specimen/SUSE"

  font "SUSE[wght].ttf"

  # No zap stanza required
end
