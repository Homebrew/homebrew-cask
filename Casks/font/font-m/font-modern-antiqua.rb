cask "font-modern-antiqua" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/modernantiqua/ModernAntiqua-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Modern Antiqua"
  homepage "https://fonts.google.com/specimen/Modern+Antiqua"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Modern Antiqua",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ModernAntiqua-Regular.ttf"

  # No zap stanza required
end
