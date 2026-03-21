cask "font-noto-sans-deseret" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansdeseret/NotoSansDeseret-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Deseret"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Deseret"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Deseret",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansDeseret-Regular.ttf"

  # No zap stanza required
end
