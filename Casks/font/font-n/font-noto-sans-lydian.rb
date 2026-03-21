cask "font-noto-sans-lydian" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslydian/NotoSansLydian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lydian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lydian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Lydian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLydian-Regular.ttf"

  # No zap stanza required
end
