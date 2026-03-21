cask "font-viaoda-libre" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/viaodalibre/ViaodaLibre-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Viaoda Libre"
  homepage "https://fonts.google.com/specimen/Viaoda+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Viaoda Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ViaodaLibre-Regular.ttf"

  # No zap stanza required
end
