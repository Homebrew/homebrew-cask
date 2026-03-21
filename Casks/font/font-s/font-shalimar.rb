cask "font-shalimar" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shalimar/Shalimar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shalimar"
  homepage "https://fonts.google.com/specimen/Shalimar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shalimar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Shalimar-Regular.ttf"

  # No zap stanza required
end
