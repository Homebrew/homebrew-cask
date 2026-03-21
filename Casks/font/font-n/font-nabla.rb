cask "font-nabla" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nabla/Nabla%5BEDPT%2CEHLT%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nabla"
  homepage "https://fonts.google.com/specimen/Nabla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nabla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Nabla[EDPT,EHLT].ttf"

  # No zap stanza required
end
