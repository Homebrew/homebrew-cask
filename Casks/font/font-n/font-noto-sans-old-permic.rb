cask "font-noto-sans-old-permic" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldpermic/NotoSansOldPermic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Permic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Permic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Permic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldPermic-Regular.ttf"

  # No zap stanza required
end
