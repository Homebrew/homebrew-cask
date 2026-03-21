cask "font-noto-sans-mro" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmro/NotoSansMro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mro"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMro-Regular.ttf"

  # No zap stanza required
end
