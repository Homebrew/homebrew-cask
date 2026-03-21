cask "font-voces" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/voces/Voces-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Voces"
  homepage "https://fonts.google.com/specimen/Voces"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Voces",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Voces-Regular.ttf"

  # No zap stanza required
end
