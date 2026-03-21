cask "font-noto-sans-marchen" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmarchen/NotoSansMarchen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Marchen"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Marchen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Marchen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMarchen-Regular.ttf"

  # No zap stanza required
end
