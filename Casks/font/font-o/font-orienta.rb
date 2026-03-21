cask "font-orienta" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orienta/Orienta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orienta"
  homepage "https://fonts.google.com/specimen/Orienta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Orienta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Orienta-Regular.ttf"

  # No zap stanza required
end
