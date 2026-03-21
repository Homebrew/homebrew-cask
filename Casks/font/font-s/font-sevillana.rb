cask "font-sevillana" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sevillana/Sevillana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sevillana"
  homepage "https://fonts.google.com/specimen/Sevillana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sevillana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sevillana-Regular.ttf"

  # No zap stanza required
end
