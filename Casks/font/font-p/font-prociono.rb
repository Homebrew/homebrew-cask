cask "font-prociono" do
  version "2.301"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prociono/Prociono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Prociono"
  homepage "https://fonts.google.com/specimen/Prociono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Prociono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Prociono-Regular.ttf"

  # No zap stanza required
end
