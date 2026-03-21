cask "font-meddon" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meddon/Meddon.ttf",
      verified: "github.com/google/fonts/"
  name "Meddon"
  homepage "https://fonts.google.com/specimen/Meddon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Meddon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Meddon.ttf"

  # No zap stanza required
end
