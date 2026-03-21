cask "font-nata-sans" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/natasans/NataSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nata Sans"
  homepage "https://fonts.google.com/specimen/Nata+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nata Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NataSans[wght].ttf"

  # No zap stanza required
end
