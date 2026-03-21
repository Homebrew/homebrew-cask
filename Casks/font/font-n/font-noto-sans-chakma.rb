cask "font-noto-sans-chakma" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanschakma/NotoSansChakma-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Chakma"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Chakma"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Chakma",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansChakma-Regular.ttf"

  # No zap stanza required
end
