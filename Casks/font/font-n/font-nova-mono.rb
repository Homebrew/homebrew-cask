cask "font-nova-mono" do
  version "1.2"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novamono/NovaMono.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Mono"
  homepage "https://fonts.google.com/specimen/Nova+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaMono.ttf"

  # No zap stanza required
end
