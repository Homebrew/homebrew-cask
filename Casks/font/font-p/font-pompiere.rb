cask "font-pompiere" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pompiere/Pompiere-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pompiere"
  homepage "https://fonts.google.com/specimen/Pompiere"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pompiere",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pompiere-Regular.ttf"

  # No zap stanza required
end
