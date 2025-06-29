cask "font-nata-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/natasans/NataSans%5Bwght%5D.ttf"
  name "Nata Sans"
  homepage "https://github.com/dnlzqn/nata-sans"

  font "NataSans[wght].ttf"

  # No zap stanza required
end
