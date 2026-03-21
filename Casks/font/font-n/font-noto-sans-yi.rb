cask "font-noto-sans-yi" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansyi/NotoSansYi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Yi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Yi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Yi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansYi-Regular.ttf"

  # No zap stanza required
end
