cask "font-rhodium-libre" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rhodiumlibre/RhodiumLibre-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rhodium Libre"
  homepage "https://fonts.google.com/specimen/Rhodium+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rhodium Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RhodiumLibre-Regular.ttf"

  # No zap stanza required
end
