cask "font-noto-sans-manichaean" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmanichaean/NotoSansManichaean-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Manichaean"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Manichaean"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Manichaean",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansManichaean-Regular.ttf"

  # No zap stanza required
end
