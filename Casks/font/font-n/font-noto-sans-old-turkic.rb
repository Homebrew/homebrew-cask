cask "font-noto-sans-old-turkic" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldturkic/NotoSansOldTurkic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Turkic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Turkic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Turkic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldTurkic-Regular.ttf"

  # No zap stanza required
end
