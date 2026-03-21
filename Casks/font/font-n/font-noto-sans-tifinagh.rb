cask "font-noto-sans-tifinagh" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstifinagh/NotoSansTifinagh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tifinagh"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tifinagh"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tifinagh",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTifinagh-Regular.ttf"

  # No zap stanza required
end
