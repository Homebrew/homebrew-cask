cask "font-noto-sans-saurashtra" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssaurashtra/NotoSansSaurashtra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Saurashtra"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Saurashtra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Saurashtra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSaurashtra-Regular.ttf"

  # No zap stanza required
end
