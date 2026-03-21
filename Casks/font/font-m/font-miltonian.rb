cask "font-miltonian" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miltonian/Miltonian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miltonian"
  homepage "https://fonts.google.com/specimen/Miltonian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Miltonian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Miltonian-Regular.ttf"

  # No zap stanza required
end
