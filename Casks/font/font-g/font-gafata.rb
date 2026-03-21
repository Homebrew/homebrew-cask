cask "font-gafata" do
  version "4.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gafata/Gafata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gafata"
  homepage "https://fonts.google.com/specimen/Gafata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gafata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gafata-Regular.ttf"

  # No zap stanza required
end
