cask "font-noto-sans-old-hungarian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldhungarian/NotoSansOldHungarian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Hungarian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Hungarian"

  font "NotoSansOldHungarian-Regular.ttf"

  # No zap stanza required
end
