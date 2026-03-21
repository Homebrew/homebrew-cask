cask "font-alexandria" do
  version "5.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alexandria/Alexandria%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alexandria"
  homepage "https://fonts.google.com/specimen/Alexandria"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alexandria",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alexandria[wght].ttf"

  # No zap stanza required
end
