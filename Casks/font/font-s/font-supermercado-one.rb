cask "font-supermercado-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/supermercadoone/SupermercadoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Supermercado One"
  homepage "https://fonts.google.com/specimen/Supermercado+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Supermercado One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SupermercadoOne-Regular.ttf"

  # No zap stanza required
end
