cask "font-noto-sans-nushu" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnushu/NotoSansNushu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Nushu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Nushu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Nushu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNushu-Regular.ttf"

  # No zap stanza required
end
