cask "font-noto-sans-ugaritic" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansugaritic/NotoSansUgaritic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ugaritic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ugaritic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Ugaritic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansUgaritic-Regular.ttf"

  # No zap stanza required
end
