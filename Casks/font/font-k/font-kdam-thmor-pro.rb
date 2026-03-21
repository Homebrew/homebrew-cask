cask "font-kdam-thmor-pro" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kdamthmorpro/KdamThmorPro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kdam Thmor Pro"
  homepage "https://fonts.google.com/specimen/Kdam+Thmor+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kdam Thmor Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KdamThmorPro-Regular.ttf"

  # No zap stanza required
end
