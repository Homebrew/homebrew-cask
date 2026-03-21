cask "font-gasoek-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gasoekone/GasoekOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gasoek One"
  homepage "https://fonts.google.com/specimen/Gasoek+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gasoek One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GasoekOne-Regular.ttf"

  # No zap stanza required
end
