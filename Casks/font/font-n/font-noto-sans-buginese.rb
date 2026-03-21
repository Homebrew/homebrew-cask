cask "font-noto-sans-buginese" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbuginese/NotoSansBuginese-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Buginese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Buginese"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Buginese",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansBuginese-Regular.ttf"

  # No zap stanza required
end
