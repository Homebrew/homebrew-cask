cask "font-noto-sans-old-north-arabian" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldnortharabian/NotoSansOldNorthArabian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old North Arabian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+North+Arabian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old North Arabian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldNorthArabian-Regular.ttf"

  # No zap stanza required
end
