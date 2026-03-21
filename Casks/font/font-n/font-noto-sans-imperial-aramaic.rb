cask "font-noto-sans-imperial-aramaic" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansimperialaramaic/NotoSansImperialAramaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Imperial Aramaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Imperial+Aramaic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Imperial Aramaic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansImperialAramaic-Regular.ttf"

  # No zap stanza required
end
