cask "font-noto-sans-miao" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmiao/NotoSansMiao-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Miao"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Miao"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Miao",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMiao-Regular.ttf"

  # No zap stanza required
end
