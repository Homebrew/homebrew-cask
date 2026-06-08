cask "font-noto-sans-old-permic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldpermic/NotoSansOldPermic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Permic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Permic"

  font "NotoSansOldPermic-Regular.ttf"

  # No zap stanza required
end
