cask "font-noto-sans-phagspa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansphagspa/NotoSansPhagsPa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans PhagsPa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+PhagsPa"

  font "NotoSansPhagsPa-Regular.ttf"

  # No zap stanza required
end
