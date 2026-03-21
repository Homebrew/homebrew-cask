cask "font-zen-kaku-gothic-antique" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenkakugothicantique"
  name "Zen Kaku Gothic Antique"
  homepage "https://fonts.google.com/specimen/Zen+Kaku+Gothic+Antique"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Kaku Gothic Antique",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenKakuGothicAntique-Black.ttf"
  font "ZenKakuGothicAntique-Bold.ttf"
  font "ZenKakuGothicAntique-Light.ttf"
  font "ZenKakuGothicAntique-Medium.ttf"
  font "ZenKakuGothicAntique-Regular.ttf"

  # No zap stanza required
end
