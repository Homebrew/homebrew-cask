cask "font-gurajada" do
  version "1.0.3"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gurajada/Gurajada-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gurajada"
  homepage "https://fonts.google.com/specimen/Gurajada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gurajada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gurajada-Regular.ttf"

  # No zap stanza required
end
