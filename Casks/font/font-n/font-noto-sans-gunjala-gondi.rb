cask "font-noto-sans-gunjala-gondi" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgunjalagondi/NotoSansGunjalaGondi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gunjala Gondi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gunjala+Gondi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Gunjala Gondi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGunjalaGondi[wght].ttf"

  # No zap stanza required
end
