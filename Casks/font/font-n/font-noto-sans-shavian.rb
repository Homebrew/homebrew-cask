cask "font-noto-sans-shavian" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansshavian/NotoSansShavian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Shavian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Shavian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Shavian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansShavian-Regular.ttf"

  # No zap stanza required
end
