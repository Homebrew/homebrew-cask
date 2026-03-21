cask "font-noto-sans-cypro-minoan" do
  version "1.503"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscyprominoan/NotoSansCyproMinoan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cypro Minoan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cypro+Minoan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Cypro Minoan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCyproMinoan-Regular.ttf"

  # No zap stanza required
end
