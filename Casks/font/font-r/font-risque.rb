cask "font-risque" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/risque/Risque-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Risque"
  homepage "https://fonts.google.com/specimen/Risque"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Risque",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Risque-Regular.ttf"

  # No zap stanza required
end
