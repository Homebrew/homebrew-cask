cask "font-noto-sans-khudawadi" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhudawadi/NotoSansKhudawadi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khudawadi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khudawadi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Khudawadi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKhudawadi-Regular.ttf"

  # No zap stanza required
end
