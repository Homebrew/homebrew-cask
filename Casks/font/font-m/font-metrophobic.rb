cask "font-metrophobic" do
  version "3.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metrophobic/Metrophobic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metrophobic"
  homepage "https://fonts.google.com/specimen/Metrophobic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Metrophobic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Metrophobic-Regular.ttf"

  # No zap stanza required
end
