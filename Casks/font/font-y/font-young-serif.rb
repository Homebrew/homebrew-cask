cask "font-young-serif" do
  version "3.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/youngserif/YoungSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Young Serif"
  homepage "https://fonts.google.com/specimen/Young+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Young Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YoungSerif-Regular.ttf"

  # No zap stanza required
end
