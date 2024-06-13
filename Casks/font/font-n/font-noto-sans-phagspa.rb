cask "font-noto-sans-phagspa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansphagspa/NotoSansPhagsPa-Regular.ttf"
  name "Noto Sans PhagsPa"
  homepage "https://github.com/notofonts/phags-pa.git"

  font "NotoSansPhagsPa-Regular.ttf"

  # No zap stanza required
end
