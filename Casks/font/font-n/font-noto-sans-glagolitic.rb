cask "font-noto-sans-glagolitic" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansglagolitic/NotoSansGlagolitic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Glagolitic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Glagolitic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Glagolitic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGlagolitic-Regular.ttf"

  # No zap stanza required
end
