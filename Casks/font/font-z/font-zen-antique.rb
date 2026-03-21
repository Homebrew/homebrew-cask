cask "font-zen-antique" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zenantique/ZenAntique-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Antique"
  homepage "https://fonts.google.com/specimen/Zen+Antique"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Antique",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenAntique-Regular.ttf"

  # No zap stanza required
end
