cask "font-noto-sans-old-hungarian" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldhungarian/NotoSansOldHungarian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Hungarian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Hungarian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Hungarian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldHungarian-Regular.ttf"

  # No zap stanza required
end
