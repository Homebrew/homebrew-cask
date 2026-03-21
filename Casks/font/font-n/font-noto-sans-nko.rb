cask "font-noto-sans-nko" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnko/NotoSansNKo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans NKo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+NKo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans NKo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNKo-Regular.ttf"

  # No zap stanza required
end
