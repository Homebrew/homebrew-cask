cask "font-noto-sans-meroitic" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmeroitic/NotoSansMeroitic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Meroitic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Meroitic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Meroitic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMeroitic-Regular.ttf"

  # No zap stanza required
end
