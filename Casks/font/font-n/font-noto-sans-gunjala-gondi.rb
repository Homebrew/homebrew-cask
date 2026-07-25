cask "font-noto-sans-gunjala-gondi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgunjalagondi/NotoSansGunjalaGondi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gunjala Gondi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gunjala+Gondi"

  font "NotoSansGunjalaGondi[wght].ttf"

  # No zap stanza required
end
