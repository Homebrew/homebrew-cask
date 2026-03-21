cask "font-zen-kurenaido" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zenkurenaido/ZenKurenaido-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Kurenaido"
  homepage "https://fonts.google.com/specimen/Zen+Kurenaido"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Kurenaido",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenKurenaido-Regular.ttf"

  # No zap stanza required
end
