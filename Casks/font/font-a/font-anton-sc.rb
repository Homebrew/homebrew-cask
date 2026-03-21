cask "font-anton-sc" do
  version "2.116"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antonsc/AntonSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Anton SC"
  homepage "https://fonts.google.com/specimen/Anton+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anton SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AntonSC-Regular.ttf"

  # No zap stanza required
end
