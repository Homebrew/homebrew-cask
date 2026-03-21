cask "font-noto-sans-zanabazar-square" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanszanabazarsquare/NotoSansZanabazarSquare-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Zanabazar Square"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Zanabazar+Square"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Zanabazar Square",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansZanabazarSquare-Regular.ttf"

  # No zap stanza required
end
